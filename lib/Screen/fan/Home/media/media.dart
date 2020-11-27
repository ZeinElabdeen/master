import 'package:flutter/material.dart';
import 'package:master_avtar/helpers/appBar.dart';
import 'package:master_avtar/helpers/drawer.dart';

class MediaView extends StatefulWidget {
  MediaView({Key key}) : super(key: key);

  @override
  _MediaViewState createState() => _MediaViewState();
}

class _MediaViewState extends State<MediaView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 50,
        title: Text(
          "ميديا",
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
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                top: 12,
                right: 15,
                left: 15,
                bottom: 12,
              ),
              constraints: BoxConstraints.expand(height: 70),
              child: TabBar(
                indicatorColor: Colors.white,
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
                labelPadding: EdgeInsets.all(0),
                labelColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab,
                unselectedLabelColor: Color(0xFFa1a1a1),
                indicator: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                // indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 3.0,
                tabs: [
                  Tab(
                    text: "معرض الصور",
                  ),
                  Tab(
                    text: "الفديوهات",
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: TabBarView(children: [
                  ListView(
                    children: [
                      GridView.builder(
                        itemCount: 10,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 0.0,
                          mainAxisSpacing: 0.0,
                        ),
                        itemBuilder: (context, index) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: new BoxDecoration(),
                            height: 150,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(0),
                                    topLeft: Radius.circular(0),
                                    bottomLeft: Radius.circular(0),
                                    bottomRight: Radius.circular(0),
                                  ),
                                  child: Image.asset(
                                    "assets/icons/55.jpg",
                                    height: MediaQuery.of(context).size.height,
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
                                      topRight: Radius.circular(0),
                                      topLeft: Radius.circular(0),
                                      bottomLeft: Radius.circular(0),
                                      bottomRight: Radius.circular(0),
                                    ),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15,
                                            left: 15,
                                            top: 15,
                                            bottom: 15),
                                        decoration: BoxDecoration(
                                          color:
                                              Colors.black38.withOpacity(0.80),
                                        ),
                                        width:
                                            MediaQuery.of(context).size.width,
                                        alignment: Alignment.centerRight,
                                        // string.length > 20? "..." + string.substring(0, 20)  : string
                                        child: Text(
                                          "مهارات داخل الملعب".length > 20
                                              ? "...." +
                                                  "مهارات داخل الملعب"
                                                      .substring(0, 20)
                                              : "مهارات داخل الملعب",
                                          textDirection: TextDirection.ltr,
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: Colors.white,
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
                          );
                        },
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                  ListView(
                    children: [
                      GridView.builder(
                        itemCount: 10,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          crossAxisSpacing: 0.0,
                          mainAxisSpacing: 0.0,
                        ),
                        itemBuilder: (context, index) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: new BoxDecoration(),
                            height: 50,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(0),
                                    topLeft: Radius.circular(0),
                                    bottomLeft: Radius.circular(0),
                                    bottomRight: Radius.circular(0),
                                  ),
                                  child: Image.asset(
                                    "assets/icons/55.jpg",
                                    height: MediaQuery.of(context).size.height,
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
                                      topRight: Radius.circular(0),
                                      topLeft: Radius.circular(0),
                                      bottomLeft: Radius.circular(0),
                                      bottomRight: Radius.circular(0),
                                    ),
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 15,
                                          left: 15,
                                          top: 15,
                                          bottom: 15),
                                      decoration: BoxDecoration(
                                        color: Colors.black38.withOpacity(0.80),
                                      ),
                                      width: MediaQuery.of(context).size.width,
                                      alignment: Alignment.centerRight,
                                      // string.length > 20? "..." + string.substring(0, 20)  : string
                                      child: Text(
                                        "مهارات داخل الملعب".length > 20
                                            ? "...." +
                                                "مهارات داخل الملعب"
                                                    .substring(0, 20)
                                            : "مهارات داخل الملعب",
                                        textDirection: TextDirection.ltr,
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
      // body: ListView(
      //   children: [
      //     GridView.builder(
      //       itemCount: 10,
      //       shrinkWrap: true,
      //       physics: NeverScrollableScrollPhysics(),
      //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //         crossAxisCount: 2,
      //         crossAxisSpacing: 0.0,
      //         mainAxisSpacing: 0.0,
      //       ),
      //       itemBuilder: (context, index) {
      //         return Container(
      //           width: MediaQuery.of(context).size.width,
      //           decoration: new BoxDecoration(),
      //           height: 150,
      //           child: Stack(
      //             children: [
      //               ClipRRect(
      //                 borderRadius: BorderRadius.only(
      //                   topRight: Radius.circular(0),
      //                   topLeft: Radius.circular(0),
      //                   bottomLeft: Radius.circular(0),
      //                   bottomRight: Radius.circular(0),
      //                 ),
      //                 child: Image.asset(
      //                   "assets/icons/55.jpg",
      //                   height: MediaQuery.of(context).size.height,
      //                   width: MediaQuery.of(context).size.width,
      //                   fit: BoxFit.cover,
      //                 ),
      //               ),
      //               Positioned(
      //                 bottom: 0,
      //                 left: 0,
      //                 right: 0,
      //                 child: ClipRRect(
      //                   borderRadius: BorderRadius.only(
      //                     topRight: Radius.circular(0),
      //                     topLeft: Radius.circular(0),
      //                     bottomLeft: Radius.circular(0),
      //                     bottomRight: Radius.circular(0),
      //                   ),
      //                   child: InkWell(
      //                     onTap: () {},
      //                     child: Container(
      //                       padding: const EdgeInsets.only(
      //                           right: 15, left: 15, top: 15, bottom: 15),
      //                       decoration: BoxDecoration(
      //                         color: Colors.black38.withOpacity(0.80),
      //                       ),
      //                       width: MediaQuery.of(context).size.width,
      //                       alignment: Alignment.centerRight,
      //                       // string.length > 20? "..." + string.substring(0, 20)  : string
      //                       child: Text(
      //                         "مهارات داخل الملعب".length > 20
      //                             ? "...." +
      //                                 "مهارات داخل الملعب".substring(0, 20)
      //                             : "مهارات داخل الملعب",
      //                         textDirection: TextDirection.ltr,
      //                         textAlign: TextAlign.right,
      //                         style: TextStyle(
      //                           color: Colors.white,
      //                           fontSize: 13,
      //                           fontWeight: FontWeight.bold,
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           ),
      //         );
      //       },
      //     ),
      //   ],
      // ),
    );
  }
}
