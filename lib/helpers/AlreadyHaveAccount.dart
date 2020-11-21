import 'package:flutter/material.dart';
import 'app_theme.dart';

Widget createNewAccount(BuildContext context, Function onTap) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 25),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'ليس لديك حساب ؟؟',
          style: TextStyle(
              color: AppTheme.secondaryColor,
              fontSize: 14,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 10,
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            'سجل الان',
            style: TextStyle(
                color: AppTheme.primaryColor,
                fontSize: 15,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
  );
}

Widget forgetPasswordText(BuildContext context, Function onTap) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 25),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        InkWell(
          onTap: onTap,
          child: Text(
            'هل نسيت كلمت السر ؟',
            style: TextStyle(
                color: AppTheme.primaryColor,
                fontSize: 14,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          width: 12,
        ),
      ],
    ),
  );
}

Widget alreadyHaveAccount(BuildContext context, Function onTap) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 25),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'لديك بالقعل حساب',
          style: TextStyle(
              color: AppTheme.secondaryColor,
              fontSize: 14,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 10,
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            'تسجيل الدخول',
            style: TextStyle(
                color: AppTheme.primaryColor,
                fontSize: 15,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
  );
}
