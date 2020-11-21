import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_avtar/Screen/LoginType/LoginTypeView.dart';
import 'package:master_avtar/Screen/fan/Home/fanHome.dart';
import 'package:master_avtar/Screen/member/Home/memberHome.dart';

import 'package:shared_preferences/shared_preferences.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  String userType;

  void goToHomePage() async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      userType = prefs.getString('userType');
      final result = await InternetAddress.lookup("googel.com");
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        print("connected");
        Timer(Duration(seconds: 1), () {
          if (userType == "provider") {
            Get.off(
              FanHomeView(),
            );
          } else if (userType == "client") {
            Get.off(
              MemberHomeView(),
            );
          } else {
            Get.off(
              LoginTypeView(),
            );
          }
        });
      }
    } on SocketException catch (_) {
      print('not connected');
      Get.back();
      goToHomePage();
    }
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    SharedPreferences.getInstance().then((prefs) {});
    goToHomePage();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              "assets/icons/splashTop.png",
              width: 94,
              height: 41,
            ),
          ),
          Center(
            child: Image.asset(
              "assets/icons/icon-about.png",
              width: 117,
              height: 133,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              "assets/icons/splashBotton.png",
              height: 71,
              width: 92,
            ),
          ),
        ],
      ),
    );
  }
}
