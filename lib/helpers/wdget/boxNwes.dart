import 'package:flutter/material.dart';

class BoxImgNwes extends StatelessWidget {
  final Function onTap;
  final String titel;
  final String img;
  const BoxImgNwes({Key key, this.onTap, this.titel, this.img})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, left: 15, top: 15, bottom: 0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: new BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey[200],
              blurRadius: 2.0, // has the effect of softening the shadow
              spreadRadius: 2.0, // has the effect of extending the shadow
              offset: Offset(
                0,
                0,
              ),
            )
          ],
        ),
        height: 180,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              child: Image.asset(
                // "assets/icons/unnamed.jpg",
                img ?? "",
                height: 170,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                child: InkWell(
                  onTap: onTap,
                  child: Container(
                    padding: const EdgeInsets.only(
                        right: 15, left: 15, top: 15, bottom: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.8),
                          spreadRadius: 4,
                          blurRadius: 2,
                          offset: Offset(0, 0), // changes position of shadow
                        ),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width,
                    // string.length > 20? "..." + string.substring(0, 20)  : string
                    child: Text(
                      // "انباء عن انطلاق البطوله الدوليه والتي سيشارك".length > 35
                      //     ? "...." +
                      //         "انباء عن انطلاق البطوله الدوليه والتي سيشارك"
                      //             .substring(0, 35)
                      //     : "انباء عن انطلاق البطوله الدوليه والتي سيشارك",
                      titel ?? "",
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF505050),
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//  BoxImgNwes(
//                   img: "assets/icons/unnamed.jpg",
//                   titel:
//                       "انباء عن انطلاق البطوله الدوليه والتي سيشارك".length > 35
//                           ? "...." +
//                               "انباء عن انطلاق البطوله الدوليه والتي سيشارك"
//                                   .substring(0, 35)
//                           : "انباء عن انطلاق البطوله الدوليه والتي سيشارك",
//                   onTap: () {},
//                 ),
