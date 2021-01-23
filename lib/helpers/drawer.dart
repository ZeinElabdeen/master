import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:master_avtar/Screen/fan/Home/ConnectUs/ConnectUs.dart';
import 'package:master_avtar/Screen/fan/Home/HomeNews/about-application/about-application.dart';
import 'package:master_avtar/Screen/fan/Home/aboutClub/aboutClub.dart';
import 'package:master_avtar/Screen/fan/Home/fanHome.dart';
import 'package:master_avtar/Screen/fan/Home/media/media.dart';
import 'package:master_avtar/Screen/fan/Home/membership/membership.dart';
import 'package:master_avtar/Screen/fan/Home/sfficial%D9%8D%D9%8DSponsor/SfficialSponsor.dart';
import 'package:master_avtar/helpers/user.dart';
import 'package:master_avtar/helpers/wdget/customListTile.dart';

import 'app_theme.dart';

class DrawerMenu extends StatelessWidget {
  void _popupDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            content: Text(
              "هل تريد الخروج من التطبيق",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: AppTheme.primaryColor,
              ),
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text(
                  "لا",
                  style: TextStyle(color: AppTheme.secondaryColor),
                ),
              ),
              FlatButton(
                onPressed: () =>
                    SystemChannels.platform.invokeMethod('SystemNavigator.pop'),
                child: Text(
                  "نعم",
                  style: TextStyle(color: AppTheme.secondaryColor),
                ),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserImg(),
          CustomListTile(
            onTap: () {
              Get.to(
                FanHomeView(),
              );
            },
            tit: "الرئيسيه",
            icons: FontAwesomeIcons.home,
          ),
          CustomListTile(
            onTap: () {
              Get.to(
                Membership(),
              );
            },
            tit: "العضوية",
            icons: FontAwesomeIcons.solidIdBadge,
          ),
          CustomListTile(
            onTap: () {
              Get.to(
                MediaView(),
              );
            },
            tit: "ميديا",
            icons: FontAwesomeIcons.film,
          ),
          CustomListTile(
            onTap: () {
              Get.to(
                SfficialSponsor(),
              );
            },
            tit: "الرعاة",
            icons: FontAwesomeIcons.volumeUp,
          ),
          CustomListTile(
            onTap: () {
              Get.to(
                AboutClub(),
              );
            },
            tit: "عن النادي",
            icons: FontAwesomeIcons.hotel,
          ),
          CustomListTile(
            onTap: () {
              Get.to(
                AboutApplication(),
              );
            },
            tit: "عن التطبيق",
            icons: FontAwesomeIcons.exclamationCircle,
          ),
          CustomListTile(
            onTap: () {
              Get.to(
                ConnectUs(),
              );
            },
            tit: "تواصل معنا",
            icons: FontAwesomeIcons.envelopeOpen,
          ),
          CustomListTile(
            onTap: () {
              // print(_onBackPressed);
              // context = null;
              // _onBackPressed();
              _popupDialog(context);
            },
            // onTap: () => _onBackPressed(),
            // onTap: () async => await _onBackPressed(),
            tit: "تسجيل الخروج",
            icons: FontAwesomeIcons.signOutAlt,
          ),
          SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
