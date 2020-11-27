import 'package:flutter/material.dart';
import 'package:master_avtar/helpers/appBar.dart';
import 'package:master_avtar/helpers/drawer.dart';
import 'package:master_avtar/helpers/sponsors.dart';

class SfficialSponsor extends StatefulWidget {
  SfficialSponsor({Key key}) : super(key: key);

  @override
  _SfficialSponsorState createState() => _SfficialSponsorState();
}

class _SfficialSponsorState extends State<SfficialSponsor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 50,
        title: Text(
          "الرعاة",
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
              "assets/icons/megaphone.png",
              // width: 200,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Sponsors(
            number: "1",
            img: "assets/icons/77.jpg",
            nameCompny: "شركة",
            namelist: "Fly Emirates",
            spons: "الراعي الرسمي",
          ),
          Sponsors(
            number: "1",
            img: "assets/icons/nike.jpg",
            nameCompny: "شركة",
            namelist: "Fly Emirates",
            spons: "الراعي الرسمي",
          ),
          // Padding(
          //   padding: EdgeInsets.only(
          //     top: 25,
          //     bottom: 25,
          //     left: 15,
          //     right: 15,
          //   ),
          //   child: Row(
          //     children: [
          //       Stack(
          //         children: [
          //           Container(
          //             padding: EdgeInsets.all(15),
          //             margin: EdgeInsets.only(top: 15),
          //             decoration: BoxDecoration(
          //               color: Colors.white,
          //               borderRadius: BorderRadius.circular(10),
          //               boxShadow: [
          //                 BoxShadow(
          //                   color: Colors.grey.withOpacity(0.5),
          //                   spreadRadius: 5,
          //                   blurRadius: 7,
          //                   offset: Offset(0, 3), // changes position of shadow
          //                 ),
          //               ],
          //             ),
          //             child: Image.asset(
          //               "assets/icons/77.jpg",
          //               width: MediaQuery.of(context).size.width / 3,
          //               height: 55,
          //               fit: BoxFit.contain,
          //             ),
          //           ),
          //           Positioned(
          //             right: 11,
          //             top: 0,
          //             child: Container(
          //               width: 30,
          //               height: 30,
          //               decoration: BoxDecoration(
          //                 color: Color(0xFF6e262c),
          //                 borderRadius: BorderRadius.circular(100),
          //               ),
          //               alignment: Alignment.center,
          //               child: Text(
          //                 "1",
          //                 style: TextStyle(
          //                   color: Colors.white,
          //                   fontWeight: FontWeight.bold,
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //       Padding(
          //         padding: const EdgeInsets.only(
          //           right: 15,
          //         ),
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             Text(
          //               "شركة",
          //               style: TextStyle(
          //                 fontSize: 20,
          //                 fontWeight: FontWeight.bold,
          //                 color: Color(0xFF444444),
          //               ),
          //             ),
          //             Text(
          //               "Fly Emirates",
          //               style: TextStyle(
          //                 fontSize: 20,
          //                 color: Color(0xFF4e555b),
          //               ),
          //             ),
          //             Text(
          //               "الراعي الرسمي",
          //               style: TextStyle(
          //                 fontSize: 14,
          //                 fontWeight: FontWeight.bold,
          //                 color: Color(0xFF6e262c),
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
