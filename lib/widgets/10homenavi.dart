import 'package:btr/layars/xlayars.dart';
import 'package:btr/models/xmodels.dart';
import 'package:btr/standard.dart';
import 'package:flutter/material.dart';

class HomeNavi extends StatefulWidget {
  const HomeNavi({Key? key}) : super(key: key);

  @override
  _HomeNaviState createState() => _HomeNaviState();
}

class _HomeNaviState extends State<HomeNavi> {
  List<Widget> _screen = [
    HomeLayar(),
    GroupLayar(),
    FavoriteLayar(),
    Scaffold(),
    Scaffold(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _screen.length,
      child: Scaffold(
        bottomNavigationBar: TabBar(
          tabs: isiTabMenu
              .map(
                (TabMenu tabmenu) =>
                    Tab(text: tabmenu.judul, icon: Icon(tabmenu.ikon)),
              )
              .toList(),
          indicator: BoxDecoration(
              border: Border(
                  top: BorderSide(color: WarnaBerkah.warnaOnline, width: 3.5))),
          indicatorSize: TabBarIndicatorSize.tab,
          unselectedLabelColor: Colors.grey[500],
          isScrollable: true,
          labelStyle: TextStyle(fontSize: 15.0),
        ),
        body: TabBarView(children: _screen),
      ),
    );
  }
}
