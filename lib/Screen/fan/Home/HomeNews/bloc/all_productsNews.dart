import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:master_avtar/Screen/fan/Home/HomeNews/bloc/eventsNews.dart';
import 'package:master_avtar/Screen/fan/Home/HomeNews/bloc/modelNews.dart';
import 'package:master_avtar/Screen/fan/Home/HomeNews/bloc/statesNews.dart';
import 'package:master_avtar/server/server_gate.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GetAllProductsBloc
    extends Bloc<GetAllProductsEvents, GetAllProductsStates> {
  GetAllProductsBloc() : super(GetAllProductsStates());
  ServerGate serverGate = ServerGate();
  @override
  Stream<GetAllProductsStates> mapEventToState(
      GetAllProductsEvents event) async* {
    if (event is GetAllProductsEventsStart) {
      yield StartLoading();
      CustomResponse response = await getAllProducts();
      if (response.success) {
        ModelNews modelNews = ModelNews.fromJson(response.response.data);
        yield GetAllProductsStatesSuccess(modelNe: modelNews.toString());
      } else {
        // write some code
        if (response.errType == 0) {
          yield GetAllProductsStatesFailed(
              errType: 0, err: "Please check your connection");
        } else if (response.errType == 1) {
          print(response.error);
          yield GetAllProductsStatesFailed(
            errType: 1,
            err: response.error['message'],
          );
        } else {
          yield GetAllProductsStatesFailed(
            errType: 2,
            err: "Server error, please try again later",
          );
        }
      }
    }
  }

  Future<CustomResponse> getAllProducts() async {
    serverGate.addInterceptors();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    CustomResponse response = await serverGate.getFromServer(
        url: 'photo/PHOTO_ID',
        headers: {
          'Authorization': prefs.getString('token'),
          'Accept': "application/json"
        });

    return response;
  }
}
