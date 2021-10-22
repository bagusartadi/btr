import 'package:flutter/material.dart';

class LogoBB extends StatelessWidget {
  const LogoBB({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CircleAvatar(radius: 50.0, backgroundColor: Colors.black),
        CircleAvatar(
            radius: 45.0, backgroundImage: AssetImage('images/merahputih.jpg')),
      ],
    );
  }
}
