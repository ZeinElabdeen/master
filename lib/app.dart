import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:master_avtar/Screen/Splash/SplashView.dart';
import 'package:get/get.dart';
import 'helpers/app_theme.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SplashView(),
      defaultTransition: Transition.cupertino,
      popGesture: Get.isPopGestureEnable,
      smartManagement: SmartManagement.full,
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: translator.delegates, // Android + iOS Delegates
      locale: translator.locale, // Active locale
      supportedLocales: translator.locals(),
      theme: ThemeData(
        fontFamily: 'Cairo',
        backgroundColor: AppTheme.backGroundColor,
        primaryColor: AppTheme.primaryColor,
        accentColor: AppTheme.secondaryColor,
      ), // Locals list
    );
  }
}
