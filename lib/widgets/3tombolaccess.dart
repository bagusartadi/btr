import 'package:btr/standard.dart';
import 'package:flutter/material.dart';

class TombolAccess extends StatelessWidget {
  final String label;
  final Function() press;
  const TombolAccess({Key? key, required this.label, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      width: double.infinity,
      height: 70.0,
      decoration: BoxDecoration(
          color: WarnaBerkah.warnaTombol,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: Colors.grey),
          boxShadow: [
            BoxShadow(
                color: Colors.white60, blurRadius: 6.0, offset: Offset(0, 2))
          ]),
      child: MaterialButton(
        onPressed: press,
        textColor: Colors.white,
        child:
            Text(label, style: TextStyle(fontSize: 35.0, letterSpacing: 1.2)),
      ),
    );
  }
}
