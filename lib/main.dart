import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:master_avtar/app.dart';

main() async {
  // if your flutter > 1.7.8 :  ensure flutter activated
  WidgetsFlutterBinding.ensureInitialized();

  await translator.init(
    localeDefault: LocalizationDefaultType.asDefined,
    languagesList: ['ar', 'en'],
    assetsDirectory: 'assets/langs/',
    apiKeyGoogle: 'googel.com', // NOT YET TESTED
  );

  runApp(
    LocalizedApp(
      child: MyApp(),
    ),
  );
}
