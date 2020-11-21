import 'package:flutter/material.dart';

class CoustomTeam extends StatelessWidget {
  final String img;
  final String name;
  final String listName;
  const CoustomTeam({Key key, this.img, this.name, this.listName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 15,
        left: 15,
      ),
      child: Container(
        padding: const EdgeInsets.only(
          top: 17,
          bottom: 17,
        ),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey.shade400,
            ),
          ),
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(100),
                  topLeft: Radius.circular(100),
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100),
                ),
                border: Border.all(
                  color: Color(0xFF6e262c),
                  width: 2,
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
                  img ?? "",
                  // "assets/icons/userc.jpeg",
                  width: 98,
                  height: 98,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(
                0.0,
                0,
                16.0,
                0,
              ),
              child: Column(
                children: [
                  Text(
                    name,
                    // "كابتن/محمد الراشد",
                    style: TextStyle(
                      color: Color(0xFF6e262c),
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    listName,
                    // "رئيس مجلس الاداره",
                    style: TextStyle(
                      color: Color(0xFF333333),
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
