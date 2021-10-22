import 'package:btr/models/xmodels.dart';
import 'package:btr/layars/xlayars.dart';
import 'package:btr/standard.dart';
import 'package:btr/widgets/2profileavatar.dart';
import 'package:flutter/material.dart';

class HomeNaviGroupLayar extends StatefulWidget {
  final Group? group;
  const HomeNaviGroupLayar({Key? key, this.group}) : super(key: key);

  @override
  _HomeNaviGroupLayarState createState() =>
      _HomeNaviGroupLayarState(group: group);
}

class _HomeNaviGroupLayarState extends State<HomeNaviGroupLayar> {
  List<Widget> _groupScreen = [
    GroupUmumLayar(),
    GroupInfoLayar(),
    GroupLaporanLayar(),
    GroupPeraturanLayar(),
  ];

  final Group? group;
  _HomeNaviGroupLayarState({this.group});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _groupScreen.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(group!.name, style: styleAppBar),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ProfileAvatar(imageUrl: group!.imageUrl),
            ),
          ],
        ),
        bottomNavigationBar: TabBar(
          tabs: isiGroupTabMenu
              .map((GroupTabMenu groupTabMenu) => Tab(
                    text: groupTabMenu.judul,
                    icon: Icon(groupTabMenu.ikon),
                  ))
              .toList(),
          labelStyle: TextStyle(fontSize: 23.0),
          unselectedLabelColor: Colors.grey[500],
          indicator: BoxDecoration(
              border: Border(
                  top: BorderSide(color: WarnaBerkah.warnaOnline, width: 3.5))),
          isScrollable: true,
          indicatorSize: TabBarIndicatorSize.tab,
        ),
        body: TabBarView(children: _groupScreen),
      ),
    );
  }
}
