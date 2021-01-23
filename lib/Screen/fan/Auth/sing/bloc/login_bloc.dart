import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:master_avtar/Screen/fan/Auth/sing/bloc/login_events.dart';
import 'package:master_avtar/Screen/fan/Auth/sing/bloc/login_states.dart';
import 'package:master_avtar/Screen/fan/Auth/sing/model.dart';
import 'package:master_avtar/server/server_gate.dart';
import 'package:prefs/prefs.dart';

class LoginBloc extends Bloc<LoginEvents, LoginStates> {
  ServerGate serverGate = ServerGate();
  LoginBloc() : super(LoginStates());
  @override
  Stream<LoginStates> mapEventToState(LoginEvents event) async* {
    if (event is LoginStatesStart) {
      yield LoginStatesStart();
      CustomResponse response = await sendLoginData(
          password: event.toString(), phone: event.toString());
      if (response.success) {
        ModelSingIn modelSingIn = ModelSingIn.fromJson(response.response.data);

        Prefs.setString('userId', modelSingIn.id);
        Prefs.setString('accessKey', modelSingIn.accessKey);
        yield LoginStatesSuccess();
      } else {
        print("from map event to state show error => ");
        print(response.error.toString());
        if (response.errType == 0) {
          yield LoginStatesFailed(
            errType: 0,
            msg: "Network error ",
          );
        } else if (response.errType == 1) {
          print("from xxxxx => ${response.error}");
          yield LoginStatesFailed(
            errType: 1,
            msg: response.error['message'],
          );
        } else {
          yield LoginStatesFailed(
            errType: 2,
            msg: "Server error , please try again",
          );
        }
      }
    }
  }

  Future<CustomResponse> sendLoginData({
    @required String phone,
    @required String password,
  }) async {
    serverGate.addInterceptors();
    print("from login =-=-> ${await Prefs.getStringF("msgToken")}");
    CustomResponse response = await serverGate.sendToServer(
      url: "/users/sign_in",
      headers: {},
      body: {
        "phone": phone,
        "password": password,
        // "device_token": await Prefs.getStringF("msgToken"),
        // "device_type": Platform.isIOS ? "ios" : "android",
      },
    );

    return response;
  }
}
