import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NextGameBox extends StatelessWidget {
  final String imga;
  final String imgb;
  final String titela;
  final String titelb;
  final String date;
  final String tiem;
  const NextGameBox({
    Key key,
    this.imga,
    this.imgb,
    this.titela,
    this.titelb,
    this.date,
    this.tiem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15, left: 15, top: 15, bottom: 15),
      child: Container(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(
                top: 20,
              ),
              padding:
                  EdgeInsets.only(right: 15, left: 15, top: 33, bottom: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
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
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            imga ?? "",
                            // "assets/icons/icon-match-2.png"
                          ),
                          Text(
                            titela ?? "",
                            // "الهلال",
                            style: TextStyle(
                              color: Color(0xFF333333),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "(مبارة ودية)",
                            style: TextStyle(
                              color: Color(0xFF0b82f9),
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            "VS",
                            style: TextStyle(
                              color: Color(0xFF333333),
                              fontWeight: FontWeight.w400,
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            imgb ?? "",
                            // "assets/icons/icon-match-1.png"
                          ),
                          Text(
                            titelb ?? "",
                            // "التعاون",
                            style: TextStyle(
                              color: Color(0xFF333333),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.calendar,
                              color: Color(0xFF6e262c),
                              size: 19,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              date ?? "",
                              // "يوم الثلاثاء 20/3/2020",
                              style: TextStyle(
                                color: Color(0xFF444444),
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.solidClock,
                              color: Color(0xFF6e262c),
                              size: 19,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              tiem ?? "",
                              // "05:00pm",
                              style: TextStyle(
                                color: Color(0xFF444444),
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                // width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(
                  right: 20,
                  left: 20,
                  top: 5,
                  bottom: 5,
                ),
                decoration: BoxDecoration(
                  color: Color(0xFF444444),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[200],
                      blurRadius: 2.0, // has the effect of softening the shadow
                      spreadRadius:
                          2.0, // has the effect of extending the shadow
                      offset: Offset(
                        0,
                        0,
                      ),
                    )
                  ],
                ),
                child: Text(
                  "المبارة القادمة",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
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
