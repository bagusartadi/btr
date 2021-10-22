import 'package:btr/datas.dart';
import 'package:btr/models/xmodels.dart';
import 'package:btr/standard.dart';
import 'package:btr/widgets/xwidgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GroupLayar extends StatefulWidget {
  const GroupLayar({Key? key}) : super(key: key);

  @override
  _GroupLayarState createState() => _GroupLayarState();
}

class _GroupLayarState extends State<GroupLayar> {
  final TrackingScrollController _trackingScrollController =
      TrackingScrollController();

  @override
  void dispose() {
    _trackingScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Responsive(
          mobile: _MobileGroupLayar(controller: _trackingScrollController),
        ),
      ),
    );
  }
}

class _MobileGroupLayar extends StatelessWidget {
  final TrackingScrollController? controller;
  const _MobileGroupLayar({Key? key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: controller,
      slivers: [
        SliverAppBar(
          title: Text('BaliBanjar', style: styleAppBar),
          actions: [
            Padding(
                padding: EdgeInsets.all(8.0),
                child: ProfileAvatar(
                    isActive: true, imageUrl: currentUser.imageUrl)),
          ],
        ),
        SliverToBoxAdapter(
            child: CreateGroupPostContainer(currentUser: currentUser)),
        SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => PostGroupContainer(
                      group: groups[index],
                    ),
                childCount: groups.length))
      ],
    );
  }
}

class PostGroupContainer extends StatelessWidget {
  final Group? group;
  const PostGroupContainer({Key? key, this.group}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 4.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HomeNaviGroupLayar(
                        group: group,
                      )));
        },
        child: Container(
          margin: EdgeInsets.all(8.0),
          child: Row(
            children: [
              ProfileAvatar(imageUrl: group!.imageUrl),
              SizedBox(width: 10.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      group!.name,
                      style: styleHeader,
                    ),
                    Text(
                        'created by ${group!.user.name} • ${group!.timeAgo} ago')
                  ],
                ),
              ),
              PopupMenuButton(
                onSelected: (test) {
                  if (test == 'sembunyikan') {
                    return null;
                  }
                  if (test == 'keluar') {
                    return null;
                  }
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                itemBuilder: (context) => [
                  PopupMenuItem(
                    height: 30.0,
                    onTap: () {
                      print('database hide');
                    },
                    child: Text(
                      'sembunyikan',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.brown,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    height: 30.0,
                    onTap: () {
                      print('database delete');
                    },
                    child: Text(
                      'keluar',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.red,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ],
                child: Icon(Icons.more_vert),
              )
            ],
          ),
        ),
      ),
    );
  }
}
