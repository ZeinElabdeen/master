import 'package:flutter/material.dart';

class AppBarScrein extends StatelessWidget {
  const AppBarScrein({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
            }),
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
    );
  }
}

class DataSearsh extends SearchDelegate<String> {
  final citise = [
    "ahmed",
    "خالد",
    "منير احمد",
    "احمد منير",
    "زين العابدين",
    "محمد خالد",
    "حسام",
    "كوره",
    "العاب اولمبيه",
    "كرة قدم",
    "مشفش حد يكلمني علي شغل",
    "ايمكم زي وشكم",
    "الي العمل",
    "الشغل تمام يا خالد",
    "ان لم تيئس اذا اكمل",
    "زين",
  ];

  final recentCities = [
    "منير احمد",
    "احمد منير",
    "زين العابدين",
    "محمد خالد",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      alignment: Alignment.center,
      padding: EdgeInsets.only(
        top: 25,
      ),
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.amber,
      child: Center(
        child: Text(query,
        style: TextStyle(
          fontSize: 15,
        ),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionLst = query.isEmpty
        ? recentCities
        : citise.where((p) => p.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          showResults(context);
        },
        leading: Icon(Icons.local_activity),
        title: RichText(
          text: TextSpan(
              text: suggestionLst[index].substring(0, query.length),
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
              children: [
                // TextSpan(
                //   text: suggestionLst[index].substring(0, query.length),
                //   style: TextStyle(
                //     color: Colors.amber,
                //     // fontWeight: FontWeight.bold,
                //   ),
                // ),
              ]),
        ),
      ),
      itemCount: suggestionLst.length,
    );
  }
}
