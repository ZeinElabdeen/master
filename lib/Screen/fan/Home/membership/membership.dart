import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_avtar/helpers/appBar.dart';
import 'package:master_avtar/helpers/drawer.dart';

class Membership extends StatefulWidget {
  Membership({Key key}) : super(key: key);

  @override
  _MembershipState createState() => _MembershipState();
}

class _MembershipState extends State<Membership> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 50,
        title: Text(
          "العضوية",
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
            child: Image.asset(
              "assets/icons/file.png",
              width: 200,
              fit: BoxFit.cover,
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
          Padding(
            padding: EdgeInsets.only(
              top: 15,
              left: 15,
              right: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "الشروط الازمة:",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF444444),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 5,
                    left: 12,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: 10,
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFF6e262c),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                width: 9,
                                height: 9,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                right: 16,
                              ),
                              child: Text(
                                "يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص aالعربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف ",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xFF4e555b),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: 10,
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFF6e262c),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                width: 9,
                                height: 9,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                right: 16,
                              ),
                              child: Text(
                                "يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص aالعربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف ",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xFF4e555b),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: 10,
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFF6e262c),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                width: 9,
                                height: 9,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                right: 16,
                              ),
                              child: Text(
                                "يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص aالعربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف ",
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
                ),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
