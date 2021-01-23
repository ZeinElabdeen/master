import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:master_avtar/Screen/LoginType/LoginTypeView.dart';
import 'package:master_avtar/Screen/Mutual/AccountActivation/AccountActivationView.dart';
import 'package:master_avtar/helpers/Btns.dart';
import 'package:master_avtar/helpers/Loaders.dart';
import 'package:master_avtar/helpers/TextFormFields.dart';
import 'package:master_avtar/helpers/app_theme.dart';
import 'package:master_avtar/helpers/navotton.dart';

class FanRegister extends StatefulWidget {
  @override
  _FanRegisterState createState() => _FanRegisterState();
}

class _FanRegisterState extends State<FanRegister> {
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
                  children: [
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
                        children: [
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
                  padding: translator.currentLanguage == "en"
                      ? EdgeInsets.only(
                          top: 30,
                        )
                      : EdgeInsets.only(
                          top: 30,
                        ),
                  child: Column(
                    children: [
                      txtField(
                        context: context,
                        controller: null,
                        enabled: true,
                        hintText: "الاسم",
                        textInputType: TextInputType.name,
                        validator: (String val) {
                          if (val.isEmpty)
                            return " الاسم مطلوب";
                          else
                            return null;
                        },
                        onSaved: (String val) {
                          setState(() {});
                        },
                        obscureText: false,
                        // prefix: "assets/icons/phone.png",
                      ),
                      SizedBox(
                        height: AppTheme.sizedBoxHeight,
                      ),
                      txtField(
                        context: context,
                        controller: null,
                        enabled: true,
                        hintText: "البريد الالكتروني",
                        textInputType: TextInputType.emailAddress,
                        validator: (String val) {
                          if (val.isEmpty)
                            return " البريد الالكتروني مطلوب";
                          else
                            return null;
                        },
                        onSaved: (String val) {
                          setState(() {});
                        },
                        obscureText: false,
                        // prefix: "assets/icons/phone.png",
                      ),
                      SizedBox(
                        height: AppTheme.sizedBoxHeight,
                      ),
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
                          setState(() {});
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
                          if (_passwordController.text !=
                              _confirmPasswordController.text) {
                            return "من فضلك تأكد من كلمه المرور";
                          } else if (val.isEmpty)
                            return "كلمة المرور مطلوبة";
                          else if (val.toString().length < 6) {
                            return "يجب ان تحتوي علي 6 ارقام او احرف علي الأقل";
                          } else {
                            return null;
                          }
                        },
                        onSaved: null,
                        controller: _passwordController,
                        textInputType: TextInputType.visiblePassword,
                        enabled: true,
                        obscureText: obscureText,
                        hintText: "كلمة المرور",
                      ),
                      SizedBox(
                        height: AppTheme.sizedBoxHeight,
                      ),
                      txtField(
                        context: context,
                        validator: (String val) {
                          if (_passwordController.text !=
                              _confirmPasswordController.text) {
                            return translator.currentLanguage == "en"
                                ? "Please check password"
                                : "من فضلك تأكد من كلمه المرور";
                          } else if (val.isEmpty)
                            return "كلمة المرور مطلوبة";
                          else {
                            return null;
                          }
                        },
                        onSaved: (String val) {
                          setState(() {});
                        },
                        controller: _confirmPasswordController,
                        textInputType: TextInputType.visiblePassword,
                        enabled: true,
                        obscureText: obscureText,
                        hintText: translator.currentLanguage == "en"
                            ? "Confirm password"
                            : "تأكيد كلمة المرور",
                      ),
                      SizedBox(
                        height: AppTheme.sizedBoxHeight,
                      ),
                      _loading
                          ? authLoader()
                          : btn(
                              context,
                              translator.currentLanguage == "en"
                                  ? "Sign in"
                                  : "التسجيل", () {
                              Get.to(
                                AccountActivationView(),
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
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
}
