import 'package:btr/datas.dart';
import 'package:btr/models/xmodels.dart';
import 'package:btr/standard.dart';
import 'package:btr/widgets/1responsive.dart';
import 'package:btr/widgets/2profileavatar.dart';
import 'package:flutter/material.dart';

class ListKerabat extends StatefulWidget {
  final Favorite? favorite;
  const ListKerabat({
    Key? key,
    this.favorite,
  }) : super(key: key);

  @override
  _ListKerabatState createState() => _ListKerabatState(favorite);
}

class _ListKerabatState extends State<ListKerabat> {
  final TrackingScrollController _trackingScrollController =
      TrackingScrollController();

  final Favorite? favorite;

  _ListKerabatState(this.favorite);

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
          mobile: _ListKerabatMobile(
              controller: _trackingScrollController, favorite: favorite),
        ),
      ),
    );
  }
}

class _ListKerabatMobile extends StatelessWidget {
  final TrackingScrollController? controller;
  final Favorite? favorite;
  const _ListKerabatMobile({Key? key, this.controller, this.favorite})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: controller,
      slivers: [
        SliverAppBar(
            pinned: true,
            title: Text(
              '${favorite!.namaList} ${currentUser.name}',
              style: styleAppBar,
            )),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => ListTeman(
              favorite: temans[index],
            ),
            childCount: temans.length,
          ),
        ),
      ],
    );
  }
}

class ListTeman extends StatelessWidget {
  final Favorite? favorite;
  const ListTeman({Key? key, this.favorite}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white38,
      margin: EdgeInsets.symmetric(vertical: 4.0),
      child: Container(
        child: ListTile(
          leading: ProfileAvatar(imageUrl: favorite!.user!.imageUrl),
          title: Text(
            favorite!.user!.name,
            style: styleHeader,
          ),
          subtitle: Text(favorite!.user!.alamat!),
          trailing: PopupMenuButton(
              color: Colors.white60,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              itemBuilder: (context) => [
                    PopupMenuItem(
                      height: 30,
                      onTap: () {
                        print('database hapus');
                      },
                      child: Text(
                        'hapus',
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.red,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                  ]),
        ),
      ),
    );
  }
}
