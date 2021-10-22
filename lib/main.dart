import 'package:btr/layars/xlayars.dart';
import 'package:btr/standard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Balibanjar',
      theme: ThemeData(
          visualDensity: VisualDensity.comfortable,
          primaryColor: WarnaBerkah.warnaDasar,
          scaffoldBackgroundColor: WarnaBerkah.warnaDasar,
          backgroundColor: WarnaBerkah.warnaDasar,
          dialogBackgroundColor: WarnaBerkah.warnaDasar2,
          appBarTheme: appBarBB,
          splashColor: Colors.white60,
          bottomAppBarTheme: BottomAppBarTheme(color: Colors.white)),
      home: OpeningLayar(),
    );
  }
}
