import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:master_avtar/Screen/fan/Auth/register/singup.dart';
import 'package:master_avtar/Screen/fan/Home/fanHome.dart';
import 'package:master_avtar/helpers/Btns.dart';
import 'package:master_avtar/helpers/Loaders.dart';
import 'package:master_avtar/helpers/Text.dart';
import 'package:master_avtar/helpers/app_theme.dart';
import 'package:master_avtar/helpers/logo.dart';
import '../PinLength.dart';

class AccountActivationView extends StatefulWidget {
  final String type, code, mobile;
  const AccountActivationView({Key key, this.type, this.code, this.mobile})
      : super(key: key);
  @override
  _AccountActivationViewState createState() => _AccountActivationViewState();
}

class _AccountActivationViewState extends State<AccountActivationView> {
  TextEditingController code = TextEditingController();
  bool _clientLoading = false;

  bool _providerLoading = false;

  bool _resendCodeLoading = false;

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  Timer timer;
  int hours;
  int minutes;
  int seconds;
  int endDate;
  bool stop = false;
  void _startCountDown() {
    print("timer started");
    DateTime now = new DateTime.now();
    int endDate = now.add(Duration(minutes: 1)).toUtc().millisecondsSinceEpoch;
    timer = Timer.periodic(Duration(milliseconds: 1000), (Timer t) {
      var now = DateTime.now().toUtc().millisecondsSinceEpoch;
      var distance = endDate - now;
      Duration remaining = Duration(milliseconds: endDate - now);

      setState(() {
        hours = remaining.inHours;
        minutes = DateTime.fromMillisecondsSinceEpoch(remaining.inMilliseconds)
            .minute;
        seconds = DateTime.fromMillisecondsSinceEpoch(remaining.inMilliseconds)
            .second;
      });
      // print("$hours $minutes $seconds");

      if (distance <= 0) {
        timer.cancel();
        stop = true;
        print('finish');
      }
    });
  }

  void _resendClientCode() async {
    setState(() {
      _resendCodeLoading = true;
    });
  }

  @override
  void initState() {
    _startCountDown();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            translator.currentLanguage == "en"
                ? Icons.keyboard_arrow_left_rounded
                : Icons.arrow_right_alt,
            color: Color(0xFF3f3f3f),
            size: 25,
          ),
          onPressed: () {
            Get.to(
              FanRegister(),
            );
          },
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              authLogo(
                context: context,
                welcomeMessage: "كود التفعيل",
                title:
                    "قم بكتابة كود التفعيل الذي تم إرساله \n علي الرقم الخاص بك \n 0502541254125 ",
              ),
              pinLength(context: context, onChange: (val) {}, controller: code),
              _clientLoading || _providerLoading
                  ? authLoader()
                  : btn(
                      context,
                      translator.currentLanguage == "en"
                          ? "Activate account"
                          : "تفعيل الحساب", () {
                      Get.to(
                        FanHomeView(),
                      );
                    }),
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 20),
                child: Text(
                  stop ? "00:00" : "${minutes ?? 01}:${seconds ?? 00}",
                  style: TextStyle(
                      color: AppTheme.primaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 0,
                ),
                child: Text(
                  "لم يصل الكود بعد ؟",
                  style: TextStyle(
                      color: AppTheme.primaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ),
              stop
                  ? _resendCodeLoading
                      ? loader()
                      : InkWell(
                          onTap: () {},
                          child: titleText(translator.currentLanguage == "en"
                              ? "Resend code"
                              : "ارسال مرة اخرى"),
                        )
                  : Container(),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  String password;
  bool obscureText = true;
}
