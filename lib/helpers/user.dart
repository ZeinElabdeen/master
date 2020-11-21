import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserImg extends StatelessWidget {
  const UserImg({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 30),
      decoration: BoxDecoration(
          // gradient: LinearGradient(
          //   colors: <Color>[
          //     Colors.deepOrange,
          //     Colors.orangeAccent,
          //   ],
          // ),
          ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/icons/user.png",
                ),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(100),
                topLeft: Radius.circular(100),
                bottomLeft: Radius.circular(100),
                bottomRight: Radius.circular(100),
              ),
            ),
            width: 165,
            height: 165,
            child: Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                // image:  DecorationImage(
                //   image: new AssetImage("assets/icons/"),
                //   fit: BoxFit.fill,
                // ),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(100),
                  topLeft: Radius.circular(100),
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100),
                ),
                border: Border.all(
                  color: Color(0xFF6e262c),
                  width: 3,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(100),
                  topLeft: Radius.circular(100),
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100),
                ),
                child: Image.asset(
                  "assets/icons/avatar.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Text(
            "اسم المستخدم",
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
              color: Color(0xFF333333),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey.shade400,
                ),
              ),
            ),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.orangeAccent,
              child: Container(
                padding: const EdgeInsets.fromLTRB(
                  25.0,
                  0,
                  25.0,
                  0,
                ),
                height: 60,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 12,
                      ),
                      child: Text(
                        "تعديل معلوماتي",
                        style: TextStyle(
                          color: Color(0xFF681d21),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.pencilAlt,
                          color: Color(0xFF681d21),
                          size: 16,
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            height: 1.5,
                            width: 18,
                            color: Color(0xFF681d21),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
