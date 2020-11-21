import 'package:flutter/material.dart';
import 'package:master_avtar/helpers/appBar.dart';
import 'package:master_avtar/helpers/coustomTeam.dart';
import 'package:master_avtar/helpers/drawer.dart';

class TheTeamView extends StatefulWidget {
  TheTeamView({Key key}) : super(key: key);

  @override
  _TheTeamViewState createState() => _TheTeamViewState();
}

class _TheTeamViewState extends State<TheTeamView> {
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
                    text: "الادارة",
                  ),
                  Tab(
                    text: "الاعبين",
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
                        itemCount: 15,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return CoustomTeam(
                            img: "assets/icons/userc.jpeg",
                            name: "كابتن/محمد الراشد",
                            listName: "رئيس مجلس الاداره",
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
                          return CoustomTeam(
                            img: "assets/icons/salah.png",
                            name: "كابتن/محمد الراشد",
                            listName: "رئيس مجلس الاداره",
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

// Container(
//           padding: EdgeInsets.all(5),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.only(
//               topRight: Radius.circular(100),
//               topLeft: Radius.circular(100),
//               bottomLeft: Radius.circular(100),
//               bottomRight: Radius.circular(100),
//             ),
//             border: Border.all(
//               color: Color(0xFF6e262c),
//               width: 2,
//             ),
//           ),
//           child: ClipRRect(
//             borderRadius: BorderRadius.only(
//               topRight: Radius.circular(100),
//               topLeft: Radius.circular(100),
//               bottomLeft: Radius.circular(100),
//               bottomRight: Radius.circular(100),
//             ),
//             child: Image.asset(
//               "assets/icons/userc.jpeg",
//               width: 98,
//               height: 98,
//               fit: BoxFit.fill,
//             ),
//           ),
//         ),
