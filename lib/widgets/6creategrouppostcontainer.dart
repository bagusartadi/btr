import 'package:btr/models/xmodels.dart';
import 'package:btr/widgets/xwidgets.dart';
import 'package:flutter/material.dart';

class CreateGroupPostContainer extends StatelessWidget {
  final User? currentUser;
  const CreateGroupPostContainer({Key? key, this.currentUser})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 4.0),
      child: Container(
        margin: EdgeInsets.all(8.0),
        child: Row(
          children: [
            ProfileAvatar(isActive: true, imageUrl: currentUser!.imageUrl),
            SizedBox(width: 20),
            Expanded(
              child: TextField(
                style: TextStyle(fontSize: 20.0),
                decoration: InputDecoration.collapsed(
                    hintText: 'create your group',
                    hintStyle:
                        TextStyle(fontSize: 25.0, fontStyle: FontStyle.italic)),
                onTap: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
