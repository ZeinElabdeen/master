import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

Widget Navotton(
  BuildContext context,
) {
  return Positioned(
    bottom: 0,
    child: Container(
      width: MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.only(
        top: 15,
        bottom: 15,
      ),
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30.0),
          topLeft: Radius.circular(30.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            spreadRadius: 10,
            blurRadius: 30,
            offset: Offset(0, 30), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 0,
            ),
            child: Text(
              "أو عن طريق",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF535461),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.twitterSquare),
                  color: Color(0xFF30c1ef),
                  iconSize: 30,
                  onPressed: () =>
                      launch('https://github.com/himanshusharma89'),
                ),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.googlePlusG),
                  color: Color(0xFFd93f21),
                  iconSize: 30,
                  onPressed: () =>
                      launch('https://github.com/himanshusharma89'),
                ),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.facebookSquare),
                  color: Color(0xFF1976d2),
                  iconSize: 30,
                  onPressed: () =>
                      launch('https://github.com/himanshusharma89'),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
