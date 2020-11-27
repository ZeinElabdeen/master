import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:master_avtar/helpers/appBar.dart';
import 'package:master_avtar/helpers/drawer.dart';

class AboutApplication extends StatefulWidget {
  AboutApplication({Key key}) : super(key: key);

  @override
  _AboutApplicationState createState() => _AboutApplicationState();
}

class _AboutApplicationState extends State<AboutApplication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 50,
        title: Text(
          "عن التطبيق",
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
              left: 15,
              right: 15,
            ),
            alignment: Alignment.centerRight,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 0,
                        blurRadius: 2,
                        offset: Offset(0, 0), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Image.asset(
                    "assets/icons/icon-app.png",
                    fit: BoxFit.contain,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 2,
                  ),
                  child: Text(
                    "فريق التعاون",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8,
                    right: 0,
                  ),
                  child: Text(
                    "النسخه 1.0.0 ",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 18,
              left: 15,
              right: 15,
            ),
            child: Column(
              children: <Widget>[
                Column(
                  children: [
                    Text(
                      "كل التفاصيل التي تهمك لامتلاك عضوية نادي فريق التعاون",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF444444),
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
                              "يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص aالعربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص aالعربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص aالعربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف",
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
                              "يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص aالعربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف",
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
                              "يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص aالعربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف",
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
        ],
      ),
    );
  }
}
