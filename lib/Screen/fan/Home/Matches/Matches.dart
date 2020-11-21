import 'package:flutter/material.dart';
import 'package:master_avtar/Screen/fan/wdget/boxnextGame.dart';
import 'package:master_avtar/helpers/appBar.dart';
import 'package:master_avtar/helpers/drawer.dart';
import 'package:master_avtar/helpers/matchesBox.dart';

class MatchesView extends StatefulWidget {
  MatchesView({Key key}) : super(key: key);

  @override
  _MatchesViewState createState() => _MatchesViewState();
}

class _MatchesViewState extends State<MatchesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 50,
        title: Image.asset(
          "assets/icons/icon-home.png",
          width: 30,
          height: 30,
          fit: BoxFit.cover,
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
        iconTheme: IconThemeData(
          color: Color(0xFF6e262c),
          size: 20,
        ),
      ),
      drawer: DrawerMenu(),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 15,
            ),
            child: NextGameBox(
              imga: "assets/icons/icon-match-2.png",
              imgb: "assets/icons/icon-match-1.png",
              titela: "الهلال",
              titelb: "التعاون",
              date: "يوم الثلاثاء 20/3/2020",
              tiem: "05:00pm",
            ),
          ),
          ListView.builder(
            itemCount: 5,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return MatchesBox();
            },
          ),
          SizedBox(
            height: 30,
          )
          // Padding(
          //   padding: EdgeInsets.only(right: 15, left: 15, top: 15, bottom: 15),
          //   child: Container(
          //     child: Stack(
          //       children: [
          //         Container(
          //           width: MediaQuery.of(context).size.width,
          //           margin: EdgeInsets.only(
          //             top: 20,
          //           ),
          //           padding: EdgeInsets.only(
          //               right: 15, left: 15, top: 33, bottom: 20),
          //           decoration: BoxDecoration(
          //             color: Colors.white,
          //             borderRadius: BorderRadius.only(
          //               topRight: Radius.circular(15),
          //               topLeft: Radius.circular(15),
          //               bottomLeft: Radius.circular(15),
          //               bottomRight: Radius.circular(15),
          //             ),
          //             boxShadow: [
          //               BoxShadow(
          //                 color: Colors.grey[200],
          //                 blurRadius:
          //                     2.0, // has the effect of softening the shadow
          //                 spreadRadius:
          //                     2.0, // has the effect of extending the shadow
          //                 offset: Offset(
          //                   0,
          //                   0,
          //                 ),
          //               )
          //             ],
          //           ),
          //           child: Padding(
          //             padding: const EdgeInsets.only(
          //               top: 20,
          //             ),
          //             child: Column(
          //               children: [
          //                 Row(
          //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                   children: [
          //                     Column(
          //                       children: [
          //                         // Image.asset(
          //                         //     // imga ?? "",
          //                         //     "assets/icons/icon-match-2.png"),
          //                         Text(
          //                           // titela ?? "",
          //                           "الهلال",
          //                           style: TextStyle(
          //                             color: Color(0xFF333333),
          //                             fontSize: 16,
          //                             fontWeight: FontWeight.bold,
          //                           ),
          //                         ),
          //                         Padding(
          //                           padding: const EdgeInsets.only(
          //                             top: 12,
          //                             bottom: 12,
          //                           ),
          //                           child: Transform(
          //                             alignment: Alignment.center,
          //                             transform: Matrix4.skewX(-0.4),
          //                             origin: Offset(0, 0),
          //                             child: Stack(
          //                               alignment: Alignment.center,
          //                               children: [
          //                                 Container(
          //                                   width: 40,
          //                                   height: 40,
          //                                   color: Color(0xFF4d4d4d),
          //                                 ),
          //                                 Text(
          //                                   "4",
          //                                   style: TextStyle(
          //                                     fontSize: 17,
          //                                     color: Colors.white,
          //                                     fontWeight: FontWeight.bold,
          //                                   ),
          //                                 ),
          //                               ],
          //                             ),
          //                           ),
          //                         ),
          //                       ],
          //                     ),
          //                     Column(
          //                       children: [
          //                         Text(
          //                           "(مبارة ودية)",
          //                           style: TextStyle(
          //                             color: Color(0xFF0b82f9),
          //                             fontSize: 15,
          //                           ),
          //                         ),
          //                         Text(
          //                           "VS",
          //                           style: TextStyle(
          //                             color: Color(0xFF333333),
          //                             fontWeight: FontWeight.w400,
          //                             fontSize: 30,
          //                           ),
          //                         ),
          //                       ],
          //                     ),
          //                     Column(
          //                       children: [
          //                         // Image.asset(
          //                         //     // imgb ?? "",
          //                         //     "assets/icons/icon-match-1.png"),
          //                         Text(
          //                           // titelb ?? "",
          //                           "التعاون",
          //                           style: TextStyle(
          //                             color: Color(0xFF333333),
          //                             fontSize: 16,
          //                             fontWeight: FontWeight.bold,
          //                           ),
          //                         ),
          //                         Padding(
          //                           padding: const EdgeInsets.only(
          //                             top: 12,
          //                             bottom: 12,
          //                           ),
          //                           child: Transform(
          //                             alignment: Alignment.center,
          //                             transform: Matrix4.skewX(-0.4),
          //                             origin: Offset(0, 0),
          //                             child: Stack(
          //                               alignment: Alignment.center,
          //                               children: [
          //                                 Container(
          //                                   width: 40,
          //                                   height: 40,
          //                                   color: Color(0xFF4d4d4d),
          //                                 ),
          //                                 Text(
          //                                   "4",
          //                                   style: TextStyle(
          //                                     fontSize: 17,
          //                                     color: Colors.white,
          //                                     fontWeight: FontWeight.bold,
          //                                   ),
          //                                 ),
          //                               ],
          //                             ),
          //                           ),
          //                         ),
          //                       ],
          //                     ),
          //                   ],
          //                 ),
          //                 Padding(
          //                   padding: const EdgeInsets.only(
          //                     top: 12,
          //                   ),
          //                   child: Row(
          //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                     children: [
          //                       Row(
          //                         children: [
          //                           FaIcon(
          //                             FontAwesomeIcons.calendar,
          //                             color: Color(0xFF6e262c),
          //                             size: 19,
          //                           ),
          //                           SizedBox(
          //                             width: 5,
          //                           ),
          //                           Text(
          //                             // date ?? "",
          //                             "يوم الثلاثاء 20/3/2020",
          //                             style: TextStyle(
          //                               color: Color(0xFF444444),
          //                               fontSize: 13,
          //                               fontWeight: FontWeight.bold,
          //                             ),
          //                           ),
          //                         ],
          //                       ),
          //                       Row(
          //                         children: [
          //                           FaIcon(
          //                             FontAwesomeIcons.solidClock,
          //                             color: Color(0xFF6e262c),
          //                             size: 19,
          //                           ),
          //                           SizedBox(
          //                             width: 5,
          //                           ),
          //                           Text(
          //                             "05:00pm",
          //                             style: TextStyle(
          //                               color: Color(0xFF444444),
          //                               fontSize: 13,
          //                               fontWeight: FontWeight.bold,
          //                             ),
          //                           ),
          //                         ],
          //                       ),
          //                     ],
          //                   ),
          //                 ),
          //               ],
          //             ),
          //           ),
          //         ),
          //         Container(
          //           padding: EdgeInsets.only(
          //             right: 15,
          //             left: 15,
          //           ),
          //           child: Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //             children: [
          //               Image.asset(
          //                   // imga ?? "",
          //                   "assets/icons/icon-match-2.png"),
          //               Image.asset(
          //                   // imga ?? "",
          //                   "assets/icons/icon-match-1.png"),
          //             ],
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}