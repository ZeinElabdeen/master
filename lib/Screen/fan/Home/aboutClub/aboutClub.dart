import 'package:flutter/material.dart';
import 'package:master_avtar/helpers/appBar.dart';
import 'package:master_avtar/helpers/drawer.dart';

class AboutClub extends StatefulWidget {
  AboutClub({Key key}) : super(key: key);

  @override
  _AboutClubState createState() => _AboutClubState();
}

class _AboutClubState extends State<AboutClub> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 50,
        title: Text(
          "عن النادي",
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
        // leading: IconButton(
        //   icon: Icon(Icons.accessible),
        //   color: Colors.black,
        //   onPressed: () => Scaffold.of(context).openDrawer(),
        // ),
      ),
      drawer: DrawerMenu(),
      body: ListView(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(
              top: 25,
              bottom: 25,
              left: 25,
              right: 25,
            ),
            alignment: Alignment.center,
            child: Column(
              children: [
                Image.asset(
                  "assets/icons/icon-about.png",
                  // width: 200,
                  fit: BoxFit.cover,
                ),
                Text(
                  "فريق التعاون",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF444444),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 15,
              right: 15,
            ),
            child: Column(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "التاسيس",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF333333),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 17,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 10,
                            ),
                            child: Text(
                              "هـذا النـص هو مثـال لنـص يمكن أن يستبـدل بنص فـي نفـس المساحة، لقد تم توليد هذا النص من مولد النص العربى يمكن أن يستبـدل بنص أخر هـذا النـص هو مثـال لنـص يمكن أن يستبـدل بنص فـي نفـس المساحة، لقد تم توليد هذا النص من مولد النص العربى يمكن أن يستبـدل بنص أخر",
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFF4e555b),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 10,
                            ),
                            child: Text(
                              "هـذا النـص هو مثـال لنـص يمكن أن يستبـدل بنص فـي نفـس المساحة، لقد تم توليد هذا النص من مولد النص العربى يمكن أن يستبـدل بنص أخر",
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFF4e555b),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 15,
              left: 15,
              right: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 20,
                  ),
                  child: Text(
                    "نبذه عن النادي",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF333333),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: Text(
                    "هـذا النـص هو مثـال لنـص يمكن أن يستبـدل بنص فـي نفـس المساحة، لقد تم توليد هذا النص من مولد النص العربى يمكن أن يستبـدل بنص أخر هـذا النـص هو مثـال لنـص يمكن أن يستبـدل بنص فـي نفـس المساحة، لقد تم توليد هذا النص من مولد النص العربى يمكن أن يستبـدل بنص أخر",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF4e555b),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: Text(
                    "هـذا النـص هو مثـال لنـص يمكن أن يستبـدل بنص فـي نفـس المساحة، لقد تم توليد هذا النص من مولد النص العربى يمكن أن يستبـدل بنص أخر ",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF4e555b),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: Text(
                    "هـذا النـص هو مثـال لنـص يمكن أن يستبـدل بنص فـي نفـس المساحة، لقد تم توليد هذا النص من مولد النص العربى يمكن أن يستبـدل بنص أخر ",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF4e555b),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
