import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:master_avtar/Screen/fan/Home/theTeam/theTeam.dart';
import 'package:master_avtar/helpers/app_theme.dart';
import 'HomeNews/homeNews.dart';
import 'Matches/Matches.dart';
import 'NewsScrun/GeneralNews.dart';

class FanHomeView extends StatefulWidget {
  final int pageIndex;
  const FanHomeView({Key key, this.pageIndex}) : super(key: key);
  @override
  _FanHomeViewState createState() => _FanHomeViewState();
}

class _FanHomeViewState extends State<FanHomeView>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  var pages = [
    HomeNewsView(),
    GeneralNews(),
    TheTeamView(),
    MatchesView(),
  ];

  @override
  void initState() {
    if (widget.pageIndex != null) {
      setState(() {
        _selectedIndex = widget.pageIndex;
      });
    } else {
      setState(() {
        _selectedIndex = 0;
      });
    }
    super.initState();
  }

  static const _txtStyle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 12,
  );

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
              // canvasColor: Colors.white,
              ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
            child: BottomNavigationBar(
              currentIndex: _selectedIndex,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  title: Text(
                    "الرئيسية",
                    style: _txtStyle,
                  ),
                  icon: Image.asset(
                    'assets/icons/house.png',
                    height: 20,
                    fit: BoxFit.fill,
                  ),
                ),
                BottomNavigationBarItem(
                  title: Text(
                    "الاخبار",
                    style: _txtStyle,
                  ),
                  icon: Image.asset(
                    'assets/icons/daily.png',
                    height: 20,
                    fit: BoxFit.fill,
                    // color: Color(
                    //   getColorHexFromStr('#D6DBE6'),
                    // ),
                  ),
                ),
                BottomNavigationBarItem(
                  title: Text(
                    "الفريق",
                    style: _txtStyle,
                  ),
                  icon: Image.asset(
                    'assets/icons/team.png',
                    height: 20,
                    fit: BoxFit.fill,
                  ),
                ),
                BottomNavigationBarItem(
                  title: Text(
                    "المباريات",
                    style: _txtStyle,
                  ),
                  icon: Image.asset(
                    'assets/icons/soccer.png',
                    height: 20,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
              selectedItemColor: Colors.white,
              backgroundColor: AppTheme.primaryColor,
              unselectedItemColor: Color(0xFFa1a1a1),
              // fixedColor: Colors.amber,
              showSelectedLabels: true,
              showUnselectedLabels: true,

              // iconSize: 25,
              // unselectedFontSize: 12,
              // selectedFontSize: 12,

              elevation: 1.0,
              onTap: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
        body: pages[_selectedIndex],
      ),
    );
  }
}
