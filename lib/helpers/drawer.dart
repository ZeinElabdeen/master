import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:master_avtar/helpers/user.dart';
import 'package:master_avtar/helpers/wdget/customListTile.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserImg(),
          CustomListTile(
            onTap: () {
              // Get.to(
              //   FanHomeView(),
              // );
            },
            tit: "الرئيسيه",
            icons: FontAwesomeIcons.home,
          ),
          CustomListTile(
            onTap: () {},
            tit: "العضوية",
            icons: FontAwesomeIcons.solidIdBadge,
          ),
          CustomListTile(
            onTap: () {},
            tit: "العضوية",
            icons: FontAwesomeIcons.film,
          ),
          CustomListTile(
            onTap: () {},
            tit: "الرعاة",
            icons: FontAwesomeIcons.volumeUp,
          ),
          CustomListTile(
            onTap: () {},
            tit: "عن النادي",
            icons: FontAwesomeIcons.hotel,
          ),
          CustomListTile(
            onTap: () {},
            tit: "عن التطبيق",
            icons: FontAwesomeIcons.exclamationCircle,
          ),
          CustomListTile(
            onTap: () {},
            tit: "تواصل معنا",
            icons: FontAwesomeIcons.envelopeOpen,
          ),
          CustomListTile(
            onTap: () {},
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
