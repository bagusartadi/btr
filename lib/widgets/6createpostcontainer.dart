import 'package:btr/models/xmodels.dart';
import 'package:btr/widgets/9createpost.dart';
import 'package:btr/widgets/xwidgets.dart';
import 'package:flutter/material.dart';

class CreatePostContainer extends StatelessWidget {
  final User? currentUser;
  const CreatePostContainer({Key? key, this.currentUser}) : super(key: key);

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
                    hintText: 'apa yang ada dipikiranmu?',
                    hintStyle: TextStyle(fontSize: 20.0)),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CreatePostLayar()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
