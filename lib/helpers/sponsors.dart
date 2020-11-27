import 'package:flutter/material.dart';

class Sponsors extends StatelessWidget {
  final String number;
  final String img;
  final String nameCompny;
  final String namelist;
  final String spons;
  const Sponsors(
      {Key key,
      this.number,
      this.img,
      this.nameCompny,
      this.namelist,
      this.spons})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 15,
        bottom: 15,
        left: 15,
        right: 15,
      ),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Image.asset(
                  img ?? "",
                  // "assets/icons/77.jpg",
                  width: MediaQuery.of(context).size.width / 3,
                  height: 55,
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                right: 11,
                top: 0,
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Color(0xFF6e262c),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    number ?? "",
                    // "1",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nameCompny ?? "",
                  // "شركة",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF444444),
                  ),
                ),
                Text(
                  namelist ?? "",
                  // "Fly Emirates",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF4e555b),
                  ),
                ),
                Text(
                  spons ?? "",
                  // "الراعي الرسمي",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF6e262c),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
