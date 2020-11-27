import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:master_avtar/helpers/AlreadyHaveAccount.dart';
import 'package:master_avtar/helpers/Btns.dart';
import 'package:master_avtar/helpers/Loaders.dart';
import 'package:master_avtar/helpers/TextFormFields.dart';
import 'package:master_avtar/helpers/appBar.dart';
import 'package:master_avtar/helpers/app_theme.dart';
import 'package:master_avtar/helpers/drawer.dart';
import 'package:url_launcher/url_launcher.dart';

class ConnectUs extends StatefulWidget {
  ConnectUs({Key key}) : super(key: key);

  @override
  _ConnectUsState createState() => _ConnectUsState();
}

class _ConnectUsState extends State<ConnectUs> {
  bool _loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 50,
        title: Text(
          "تواصل معنا",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(Icons.search),
              color: Color(0xFF6e262c),
              iconSize: 20,
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: DataSearsh(),
                );
              })
        ],
        // iconTheme: IconThemeData(
        //   color: Color(0xFF6e262c),
        //   size: 20,
        // ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Image.asset("assets/icons/appBar.png"),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        // leading: IconButton(
        //   icon: Icon(Icons.accessible),
        //   color: Colors.black,
        //   onPressed: () => Scaffold.of(context).openDrawer(),
        // ),
      ),
      drawer: DrawerMenu(),
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(
              top: 25,
              bottom: 25,
              left: 25,
              right: 25,
            ),
            alignment: Alignment.center,
            child: Image.asset(
              "assets/icons/icon-contact.png",
              // width: 200,
              fit: BoxFit.cover,
            ),
          ),
          Form(
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                        top: 30,
                      ),
                      child: Column(
                        children: <Widget>[
                          txtField(
                            context: context,
                            controller: null,
                            enabled: true,
                            hintText: "ارقم الجوال",
                            textInputType: TextInputType.phone,
                            validator: (String val) {
                              if (val.isEmpty)
                                return "رقم الجوال مطلوب";
                              else
                                return null;
                            },
                            onSaved: (String val) {
                              setState(() {});
                            },
                            obscureText: false,
                            // prefix: "assets/icons/phone.png",
                          ),
                          SizedBox(
                            height: AppTheme.sizedBoxHeight,
                          ),
                          txtField(
                            context: context,
                            controller: null,
                            enabled: true,
                            hintText: "الاميل مطلوب",
                            textInputType: TextInputType.emailAddress,
                            validator: (String val) {
                              if (val.isEmpty)
                                return "الاميل مطلوب";
                              else
                                return null;
                            },
                            onSaved: (String val) {
                              setState(() {});
                            },
                            obscureText: false,
                            // prefix: "assets/icons/phone.png",
                          ),
                          SizedBox(
                            height: AppTheme.sizedBoxHeight,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 15,
                              left: 15,
                            ),
                            child: TextFormField(
                              minLines: 3,
                              maxLines: 100000,
                              style: TextStyle(
                                  fontFamily: AppTheme.boldFont,
                                  color: AppTheme.primaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13),
                              autocorrect: false,
                              validator: (String val) {
                                if (val.isEmpty)
                                  return "اترك رسالتك";
                                else
                                  return null;
                              },
                              onSaved: (String val) {
                                setState(() {});
                              },
                              decoration: InputDecoration(
                                errorStyle: TextStyle(
                                  fontFamily: AppTheme.boldFont,
                                  color: Colors.red,
                                  fontSize: 13,
                                ),
                                contentPadding: EdgeInsets.only(
                                    left: 15, top: 15, bottom: 15, right: 15),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  borderSide: BorderSide(
                                    width: 0,
                                    style: BorderStyle.solid,
                                  ),
                                ),
                                filled: true,
                                fillColor: Color(0xFFe9e9e9),
                                hintText: "نص الرساله",
                                enabled: true,
                                labelStyle: TextStyle(
                                    color: AppTheme.secondaryColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: AppTheme.sizedBoxHeight,
                          ),
                          _loading
                              ? authLoader()
                              : btn(context, "ارسال", () {
                                  // Get.to(
                                  // );
                                }),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 12,
                            ),
                            child: Column(
                              children: [
                                Text(
                                  "أو يمكنك القيام بمتابعة حساباتنا الأتية",
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xFF333333)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 17),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.symmetric(horizontal: 5),
                                        width: 40,
                                        height: 40,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF486cb7),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(100),
                                          ),
                                        ),
                                        child: IconButton(
                                          icon: FaIcon(
                                              FontAwesomeIcons.facebookF),
                                          color: Colors.white,
                                          iconSize: 18,
                                          onPressed: () => launch(
                                              'https://github.com/himanshusharma89'),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.symmetric(horizontal: 5),
                                        width: 40,
                                        height: 40,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF55acee),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(100),
                                          ),
                                        ),
                                        child: IconButton(
                                          icon: FaIcon(
                                              FontAwesomeIcons.googlePlusG),
                                          color: Colors.white,
                                          iconSize: 18,
                                          onPressed: () => launch(
                                              'https://github.com/himanshusharma89'),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.symmetric(horizontal: 5),
                                        width: 40,
                                        height: 40,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFdc4e41),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(100),
                                          ),
                                        ),
                                        child: IconButton(
                                          icon:
                                              FaIcon(FontAwesomeIcons.twitter),
                                          color: Colors.white,
                                          iconSize: 18,
                                          onPressed: () => launch(
                                              'https://github.com/himanshusharma89'),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.symmetric(horizontal: 5),
                                        width: 40,
                                        height: 40,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFe52e71),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(100),
                                          ),
                                        ),
                                        child: IconButton(
                                          icon: FaIcon(
                                              FontAwesomeIcons.instagram),
                                          color: Colors.white,
                                          iconSize: 18,
                                          onPressed: () => launch(
                                              'https://github.com/himanshusharma89'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: AppTheme.sizedBoxHeight,
          ),
        ],
      ),
    );
  }

  bool obscureText = true;
}
