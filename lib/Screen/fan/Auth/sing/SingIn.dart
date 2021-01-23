import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_avtar/Screen/LoginType/LoginTypeView.dart';
import 'package:master_avtar/Screen/fan/Auth/register/singup.dart';
import 'package:master_avtar/Screen/fan/Auth/sing/bloc/login_events.dart';
import 'package:master_avtar/Screen/fan/Home/fanHome.dart';
import 'package:master_avtar/helpers/AlreadyHaveAccount.dart';
import 'package:master_avtar/helpers/Btns.dart';
import 'package:master_avtar/helpers/Loaders.dart';
import 'package:master_avtar/helpers/TextFormFields.dart';
import 'package:master_avtar/helpers/app_theme.dart';
import 'package:master_avtar/helpers/navotton.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:toast/toast.dart';
import 'bloc/login_bloc.dart';

class FanSingIn extends StatefulWidget {
  @override
  _FanSingInState createState() => _FanSingInState();
}

class _FanSingInState extends State<FanSingIn> {
  String userPhon;

  String userPassword;

  // LoginBloc _loginBloc = kiwi.KiwiContainer().resolve<LoginBloc>();
  LoginBloc _clientSignInController = LoginBloc();

  @override
  void dispose() {
    _clientSignInController.close();
    super.dispose();
  }

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _submit(BuildContext context) {
    if (!_formKey.currentState.validate())
      return;
    else {
      _formKey.currentState.save();
      setState(() {
        _loading = true;
      });
      _clientSignInController
          .sendLoginData(
        phone: userPhon,
        password: userPassword,
      )
          .then((response) {
        print(response.response.toString() + "<<<<<<<<<<<<<<<   responde");
        print(response.statusCode.toString() + "<<<<<<<<<<<<<<<   responde");
        if (response.success) {
          setState(() {
            _loading = false;
          });
          Get.to(
            FanHomeView(),
          );
        } else {
          setState(() {
            _loading = false;
          });
          if (response.errType == 1) {
            // error from server
            print(response.error.toString());
            if (response.statusCode == 401 || response.statusCode == 422) {
              Toast.show(response.error['message'], context,
                  gravity: Toast.CENTER, duration: Toast.LENGTH_LONG);
            }
          } else {
            // other error
            Toast.show(response.error['message'], context,
                gravity: Toast.CENTER, duration: Toast.LENGTH_LONG);
          }
        }
      });
    }
  }

  bool _loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_right_alt,
            color: Color(0xFF3f3f3f),
            size: 25,
          ),
          onPressed: () {
            Get.to(
              LoginTypeView(),
            );
          },
        ),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          // padding: EdgeInsets.only(
          //   left: 30,
          //   right: 30,
          // ),
          child: SingleChildScrollView(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(
                        right: 15,
                        left: 15,
                      ),
                      child: Text(
                        "الدخول كامشجع",
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.w900,
                          color: Color(0xFF535461),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: 30,
                        right: 15,
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Image(
                            image: AssetImage(
                              "assets/icons/icon-login-1.png",
                            ),
                            width: 83,
                            // height: 62,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            left: 0,
                            child: Image(
                              image: AssetImage(
                                "assets/icons/canvas1.png",
                              ),
                              // width: 83,
                              // height: 62,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 30,
                  ),
                  child: Column(
                    children: <Widget>[
                      txtField(
                        context: context,
                        controller: null,
                        enabled: true,
                        hintText: "ارقم الجوال",
                        textInputType: TextInputType.phone,
                        validator: (String val) {
                          if (val.isEmpty)
                            return "رقم الجوال مطلوب";
                          else
                            return null;
                        },
                        onSaved: (String val) {
                          setState(() {
                            userPhon = val;
                          });
                        },
                        obscureText: false,
                        // prefix: "assets/icons/phone.png",
                      ),
                      SizedBox(
                        height: AppTheme.sizedBoxHeight,
                      ),
                      txtField(
                        context: context,
                        validator: (String val) {
                          if (val.isEmpty)
                            return "كلمة المرور مطلوبة";
                          else
                            return null;
                        },
                        onSaved: (String val) {
                          setState(() {
                            userPassword = val;
                          });
                        },
                        controller: null,
                        textInputType: TextInputType.visiblePassword,
                        enabled: true,
                        obscureText: obscureText,
                        hintText: "كلمة المرور",
                      ),
                      SizedBox(
                        height: AppTheme.sizedBoxHeight,
                      ),
                      forgetPasswordText(context, () {
                        // Get.to(
                        //   // ForgetPasswordView(
                        //   //   type: "client",
                        //   // ),
                        // );
                      }),
                      _loading
                          ? authLoader()
                          : btn(context, "تسجيل الدخوال", () {
                              _submit(context);
                            }),
                      btnB(context, "تسجيل حساب جديد", () {
                        Get.to(
                          FanRegister(),
                        );
                      }),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Navotton(
                  context,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool obscureText = true;
}
