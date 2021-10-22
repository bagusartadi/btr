import 'package:btr/models/xmodels.dart';
import 'package:btr/widgets/xwidgets.dart';
import 'package:flutter/material.dart';

class PostHeader extends StatelessWidget {
  final Post? post;
  const PostHeader({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ProfileAvatar(imageUrl: post!.user.imageUrl, isActive: true),
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(post!.user.name),
            Text('created on ${post!.user.name} • ${post!.timeAgo}'),
          ],
        ),
      ),
      PopupMenuButton(
        padding: EdgeInsets.zero,
        child: Icon(Icons.more_vert, size: 30.0, color: Colors.grey),
        itemBuilder: (context) => [
          PopupMenuItem(
            onTap: () {
              print('sembunyikan');
            },
            height: 25.0,
            padding: EdgeInsets.only(left: 8.0),
            textStyle:
                TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
            child: Text('sembunyikan'),
          ),
          PopupMenuItem(
            onTap: () {
              print('tester');
            },
            height: 25.0,
            padding: EdgeInsets.only(left: 8.0),
            textStyle:
                TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
            child: Text('tester'),
          )
        ],
      ),
    ]);
  }
}
