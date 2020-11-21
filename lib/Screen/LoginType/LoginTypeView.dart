import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:master_avtar/Screen/fan/Auth/sing/SingIn.dart';
import 'package:master_avtar/helpers/Btns.dart';

class LoginTypeView extends StatefulWidget {
  @override
  _LoginTypeViewState createState() => _LoginTypeViewState();
}

class _LoginTypeViewState extends State<LoginTypeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  child: Image(
                    image: AssetImage(
                      "assets/icons/component.png",
                    ),
                    width: 83,
                    height: 62,
                    fit: BoxFit.cover,
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 100,
                            right: 15,
                            left: 15,
                          ),
                          child: Image(
                            image: AssetImage("assets/icons/component33.png"),
                            fit: BoxFit.contain,
                            // height: 200,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 55,
                              right: 15,
                              left: 15,
                            ),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/icons/icon-welcome.png",
                                  fit: BoxFit.contain,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    right: 15,
                                    left: 15,
                                  ),
                                  child: Text(
                                    translator.currentLanguage == "en"
                                        ? "welcome !"
                                        : "مرحبا بك !",
                                    style: TextStyle(
                                      fontSize: 34,
                                      fontWeight: FontWeight.w900,
                                      color: Color(0xFF535461),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              top: 20,
                            ),
                            child: Column(
                              children: [
                                btn(
                                  context,
                                  translator.currentLanguage == "en"
                                      ? "Login as a fan"
                                      : "الدخول كمشجع",
                                  () {
                                    Get.to(
                                      FanSingIn(),
                                    );
                                  },
                                ),
                                btn(
                                  context,
                                  translator.currentLanguage == "en"
                                      ? "Log in as a member"
                                      : " الدخول كعضو",
                                  () {
                                    // Get.to(
                                    //   ClientSingIn(),
                                    // );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
