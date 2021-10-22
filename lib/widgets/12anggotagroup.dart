import 'package:btr/datas.dart';
import 'package:btr/standard.dart';
import 'package:btr/widgets/xwidgets.dart';
import 'package:flutter/material.dart';

class AnggotaGroup extends StatelessWidget {
  final List<ProfileAvatar>? onlineGroup;
  const AnggotaGroup({Key? key, this.onlineGroup}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: WarnaBerkah.warnaDasar,
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      child: InkWell(
        onTap: () {
          print('view profile');
        },
        child: Container(
          height: 45.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: abbaGroup.length,
            itemBuilder: (context, index) => onlineGroup![index],
          ),
        ),
      ),
    );
  }
}
