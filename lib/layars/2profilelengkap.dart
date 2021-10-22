import 'package:btr/standard.dart';
import 'package:btr/widgets/xwidgets.dart';
import 'package:flutter/material.dart';

class ProfileLayar extends StatelessWidget {
  const ProfileLayar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BaliBanjar'), titleTextStyle: styleAppBar),
      body: Stack(
        children: [
          Container(width: double.infinity, height: double.infinity),
          Container(
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: Column(
                children: [LogoBB()],
              ),
            ),
          )
        ],
      ),
    );
  }
}
