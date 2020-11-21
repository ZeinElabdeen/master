import 'package:flutter/material.dart';

import 'app_theme.dart';

Widget authLogo({BuildContext context, String welcomeMessage, String title}) {
  return Padding(
    padding: const EdgeInsets.only(
      top: 12,
    ),
    child: Column(
      children: <Widget>[
        Text(
          welcomeMessage,
          style: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.w900,
            color: Color(0xFF535461),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: TextStyle(
              color: AppTheme.primaryColor,
              fontSize: 12,
              fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 30,
        ),
      ],
    ),
  );
}
