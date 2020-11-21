import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:master_avtar/Screen/fan/wdget/boxNwes.dart';
import 'package:master_avtar/Screen/fan/wdget/boxnextGame.dart';
import 'package:master_avtar/Screen/fan/wdget/swiper.dart';
import 'package:master_avtar/helpers/appBar.dart';
import 'package:master_avtar/helpers/drawer.dart';

class HomeNewsView extends StatefulWidget {
  @override
  _HomeNewsViewState createState() => _HomeNewsViewState();
}

class _HomeNewsViewState extends State<HomeNewsView> {
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
        // leading: IconButton(
        //   icon: Icon(Icons.accessible),
        //   color: Colors.black,
        //   onPressed: () => Scaffold.of(context).openDrawer(),
        // ),
      ),
      drawer: DrawerMenu(),
      body: ListView(
        children: [
          SwiperSlider(
            img: "assets/icons/xf.jpg",
            titel: "انباء عن انطلاق البطوله الدوليه والتي سيشارك".length > 40
                ? "...." +
                    "انباء عن انطلاق البطوله الدوليه والتي سيشارك"
                        .substring(0, 40)
                : "انباء عن انطلاق البطوله الدوليه والتي سيشارك",
          ),
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
          Container(
            padding: EdgeInsets.only(
              right: 15,
              left: 15,
              top: 15,
            ),
            alignment: Alignment.centerRight,
            child: Text(
              "احدث الاخبار",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w900,
                color: Color(0xFF505050),
              ),
            ),
          ),
          ListView.builder(
            itemCount: 5,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return BoxImgNwes(
                img: "assets/icons/unnamed.jpg",
                titel:
                    "انباء عن انطلاق البطوله الدوليه والتي سيشارك".length > 35
                        ? "...." +
                            "انباء عن انطلاق البطوله الدوليه والتي سيشارك"
                                .substring(0, 35)
                        : "انباء عن انطلاق البطوله الدوليه والتي سيشارك",
                onTap: () {},
              );
            },
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}

// class DataSearsh extends SearchDelegate<String> {
//   final citise = [
//     "احمد",
//     "خالد",
//     "منير احمد",
//     "احمد منير",
//     "زين العابدين",
//     "محمد خالد",
//     "حسام",
//     "كوره",
//     "العاب اولمبيه",
//     "كرة قدم",
//     "مشفش حد يكلمني علي شغل",
//     "ايمكم زي وشكم",
//     "الي العمل",
//     "الشغل تمام يا خالد",
//     "ان لم تيئس اذا اكمل",
//     "زين",
//   ];

//   final recentCities = [
//     "منير احمد",
//     "احمد منير",
//     "زين العابدين",
//     "محمد خالد",
//   ];

//   @override
//   List<Widget> buildActions(BuildContext context) {
//     return [
//       IconButton(
//           icon: Icon(Icons.clear),
//           onPressed: () {
//             query = "";
//           })
//     ];
//   }

//   @override
//   Widget buildLeading(BuildContext context) {
//     return IconButton(
//       icon: AnimatedIcon(
//         icon: AnimatedIcons.menu_arrow,
//         progress: transitionAnimation,
//       ),
//       onPressed: () {
//         close(context, null);
//       },
//     );
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width,
//       height: MediaQuery.of(context).size.height,
//       color: Colors.amber,
//       child: Center(
//         child: Text(query),
//       ),
//     );
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     final suggestionLst = query.isEmpty
//         ? recentCities
//         : citise.where((p) => p.startsWith(query)).toList();

//     return ListView.builder(
//       itemBuilder: (context, index) => ListTile(
//         onTap: () {
//           showResults(context);
//         },
//         leading: Icon(Icons.local_activity),
//         title: RichText(
//           text: TextSpan(
//               text: suggestionLst[index].substring(0, query.length),
//               style: TextStyle(
//                 color: Colors.black,
//                 fontWeight: FontWeight.bold,
//               ),
//               children: [
//                 TextSpan(
//                   text: suggestionLst[index].substring(0, query.length),
//                   style: TextStyle(
//                     color: Colors.grey,
//                     // fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ]),
//         ),
//       ),
//       itemCount: suggestionLst.length,
//     );
//   }
// }
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
//           child: Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Column(
//                     children: [
//                       Image.asset("assets/icons/icon-match-2.png"),
//                       Text(
//                         "الهلال",
//                         style: TextStyle(
//                           color: Color(0xFF333333),
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                   Column(
//                     children: [
//                       Text(
//                         "(مبارة ودية)",
//                         style: TextStyle(
//                           color: Color(0xFF0b82f9),
//                           fontSize: 15,
//                         ),
//                       ),
//                       Text(
//                         "VS",
//                         style: TextStyle(
//                           color: Color(0xFF333333),
//                           fontWeight: FontWeight.w400,
//                           fontSize: 30,
//                         ),
//                       ),
//                     ],
//                   ),
//                   Column(
//                     children: [
//                       Image.asset("assets/icons/icon-match-1.png"),
//                       Text(
//                         "التعاون",
//                         style: TextStyle(
//                           color: Color(0xFF333333),
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(
//                   top: 12,
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         FaIcon(
//                           FontAwesomeIcons.calendar,
//                           color: Color(0xFF6e262c),
//                           size: 19,
//                         ),
//                         SizedBox(
//                           width: 5,
//                         ),
//                         Text(
//                           "يوم الثلاثاء 20/3/2020",
//                           style: TextStyle(
//                             color: Color(0xFF444444),
//                             fontSize: 13,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         FaIcon(
//                           FontAwesomeIcons.solidClock,
//                           color: Color(0xFF6e262c),
//                           size: 19,
//                         ),
//                         SizedBox(
//                           width: 5,
//                         ),
//                         Text(
//                           "05:00pm",
//                           style: TextStyle(
//                             color: Color(0xFF444444),
//                             fontSize: 13,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//         Positioned(
//           top: 0,
//           right: 0,
//           child: Container(
//             // width: MediaQuery.of(context).size.width,
//             padding: EdgeInsets.only(
//               right: 20,
//               left: 20,
//               top: 5,
//               bottom: 5,
//             ),
//             decoration: BoxDecoration(
//               color: Color(0xFF444444),
//               borderRadius: BorderRadius.only(
//                 topRight: Radius.circular(10),
//                 topLeft: Radius.circular(10),
//                 bottomLeft: Radius.circular(10),
//                 bottomRight: Radius.circular(10),
//               ),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey[200],
//                   blurRadius:
//                       2.0, // has the effect of softening the shadow
//                   spreadRadius:
//                       2.0, // has the effect of extending the shadow
//                   offset: Offset(
//                     0,
//                     0,
//                   ),
//                 )
//               ],
//             ),
//             child: Text(
//               "المبارة القادمة",
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 15,
//               ),
//             ),
//           ),
//         ),
//       ],
//     ),
//   ),
// ),
// /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  BoxImgNwes(
//             img: "assets/icons/unnamed.jpg",
//             titel: "انباء عن انطلاق البطوله الدوليه والتي سيشارك".length > 35
//                 ? "...." +
//                     "انباء عن انطلاق البطوله الدوليه والتي سيشارك"
//                         .substring(0, 35)
//                 : "انباء عن انطلاق البطوله الدوليه والتي سيشارك",
//             onTap: () {
//               // Get.to();
//             },
//           ),
