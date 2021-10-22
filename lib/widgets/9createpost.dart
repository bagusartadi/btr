import 'package:btr/datas.dart';
import 'package:btr/standard.dart';
import 'package:btr/widgets/2profileavatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class CreatePostLayar extends StatelessWidget {
  const CreatePostLayar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 1.5,
          title: Text('BaliBanjar', style: styleAppBar),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  ProfileAvatar(isActive: true, imageUrl: currentUser.imageUrl),
            )
          ],
        ),
        body: Stack(children: [
          Container(height: double.infinity, width: double.infinity),
          Container(
            margin: EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: Column(
                children: [
                  Row(
                    children: [
                      Flexible(
                          child: Container(
                        height: 150,
                        width: 300,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/ulundanu.jpg'))),
                      )),
                      SizedBox(width: 10.0),
                      Expanded(
                          child: TextField(
                        textAlign: TextAlign.center,
                        maxLines: 5,
                        maxLengthEnforcement: MaxLengthEnforcement.enforced,
                        style: TextStyle(fontSize: 20.0, color: Colors.grey),
                        decoration: InputDecoration.collapsed(
                            hintText: 'max images 2mb'),
                      )),
                    ],
                  ),
                  Container(
                    constraints: BoxConstraints.expand(height: 500.0),
                    decoration: BoxDecoration(color: Colors.white),
                    child: TextField(
                      textAlign: TextAlign.start,
                      textAlignVertical: TextAlignVertical.center,
                      keyboardType: TextInputType.text,
                      style: TextStyle(fontSize: 25.0),
                      decoration: InputDecoration.collapsed(
                          hintText: 'apa yang ada dipikiran anda?'),
                    ),
                  ),
                ],
              ),
            ),
          )
        ]));
  }
}
