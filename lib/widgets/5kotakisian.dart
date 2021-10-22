import 'package:flutter/material.dart';
import '../standard.dart';

class KotakIsian extends StatelessWidget {
  final String? label;
  final TextInputType? textInputType;
  final bool textAcak;
  const KotakIsian({
    Key? key,
    this.label,
    this.textInputType,
    this.textAcak = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      height: 70.0,
      decoration: BoxDecoration(
          color: WarnaBerkah.warnaDasar2,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
                color: Colors.white60, blurRadius: 5.0, offset: Offset(0, 2)),
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
        child: TextField(
          style: TextStyle(fontSize: 35.0),
          keyboardType: textInputType,
          obscureText: textAcak,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.zero,
              border: InputBorder.none,
              labelText: label,
              labelStyle: TextStyle(fontSize: 20, color: Colors.white)),
        ),
      ),
    );
  }
}
