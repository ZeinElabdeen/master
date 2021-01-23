import 'package:flutter/material.dart';

class LoginEvents {}

class LoginEventsStart extends LoginEvents {
  String phone;
  String password;
  LoginEventsStart({
    @required this.phone,
    @required this.password,
  });
}
