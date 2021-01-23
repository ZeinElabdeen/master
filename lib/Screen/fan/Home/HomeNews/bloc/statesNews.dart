import 'package:master_avtar/Screen/fan/Home/HomeNews/bloc/modelNews.dart';

class GetAllProductsStates {}

class StartLoading extends GetAllProductsStates {}

class GetAllProductsStatesSuccess extends GetAllProductsStates {
  List<Photo> modelNews;
  GetAllProductsStatesSuccess({
    this.modelNews,
    String modelNe,
  });
}

class GetAllProductsStatesFailed extends GetAllProductsStates {
  int errType;
  String err;
  GetAllProductsStatesFailed({
    this.errType,
    this.err,
  });
}
