import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_avtar/Screen/fan/NewsDetails/NewsDetails.dart';
import 'package:master_avtar/helpers/appBar.dart';
import 'package:master_avtar/helpers/drawer.dart';
import 'package:master_avtar/helpers/wdget/boxNwes.dart';

class GeneralNews extends StatefulWidget {
  GeneralNews({Key key}) : super(key: key);

  @override
  _GeneralNewsState createState() => _GeneralNewsState();
}

class _GeneralNewsState extends State<GeneralNews> {
  TabController _controller;

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
        length: 3,
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
                    text: "احدث الاخبار",
                  ),
                  Tab(
                    text: "اخبار الفرق",
                  ),
                  Tab(
                    text: "اخبار البطولات",
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: TabBarView(children: [
                  ListView(
                    children: [
                      ListView.builder(
                        itemCount: 5,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return BoxImgNwes(
                            img: "assets/icons/unnamed.jpg",
                            titel: "انباء عن انطلاق البطوله الدوليه والتي سيشارك"
                                        .length >
                                    35
                                ? "...." +
                                    "انباء عن انطلاق البطوله الدوليه والتي سيشارك"
                                        .substring(0, 35)
                                : "انباء عن انطلاق البطوله الدوليه والتي سيشارك",
                            onTap: () {
                              Get.to(
                                NewsDetails(),
                              );
                            },
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
                      ListView.builder(
                        itemCount: 5,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return BoxImgNwes(
                            img: "assets/icons/news-tab-2.png",
                            titel: "انباء عن انطلاق البطوله الدوليه والتي سيشارك"
                                        .length >
                                    35
                                ? "...." +
                                    "انباء عن انطلاق البطوله الدوليه والتي سيشارك"
                                        .substring(0, 35)
                                : "انباء عن انطلاق البطوله الدوليه والتي سيشارك",
                            onTap: () {
                              Get.to(
                                NewsDetails(),
                              );
                            },
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
                      ListView.builder(
                        itemCount: 5,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return BoxImgNwes(
                            img: "assets/icons/news-tab-3.png",
                            titel: "انباء عن انطلاق البطوله الدوليه والتي سيشارك"
                                        .length >
                                    35
                                ? "...." +
                                    "انباء عن انطلاق البطوله الدوليه والتي سيشارك"
                                        .substring(0, 35)
                                : "انباء عن انطلاق البطوله الدوليه والتي سيشارك",
                            onTap: () {
                              Get.to(
                                NewsDetails(),
                              );
                            },
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
    );
  }
}
