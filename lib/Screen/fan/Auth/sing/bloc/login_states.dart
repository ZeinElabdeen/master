class LoginStates {}

class LoginStatesStart extends LoginStates {}

class LoginStatesSuccess extends LoginStates {}

class LoginStatesFailed extends LoginStates {
  int errType;
  String msg;
  LoginStatesFailed({
    this.errType,
    this.msg,
  });
}
