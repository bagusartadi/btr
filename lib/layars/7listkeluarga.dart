import 'package:btr/datas.dart';
import 'package:btr/models/favorite.dart';
import 'package:btr/standard.dart';
import 'package:btr/widgets/xwidgets.dart';
import 'package:flutter/material.dart';

class ListKeluarga extends StatefulWidget {
  final Favorite? favorite;
  const ListKeluarga({Key? key, this.favorite}) : super(key: key);

  @override
  State<ListKeluarga> createState() => _ListKeluargaState(favorite: favorite);
}

class _ListKeluargaState extends State<ListKeluarga> {
  final TrackingScrollController _trackingScrollController =
      TrackingScrollController();

  final Favorite? favorite;
  _ListKeluargaState({this.favorite});

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
          mobile: _ListKeluargaMobile(
              controller: _trackingScrollController, favorite: favorite),
        ),
      ),
    );
  }
}

class _ListKeluargaMobile extends StatelessWidget {
  final TrackingScrollController? controller;
  final Favorite? favorite;
  const _ListKeluargaMobile({Key? key, this.controller, this.favorite})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: controller,
      slivers: [
        SliverAppBar(
            elevation: 1.5,
            pinned: true,
            title: Text('${favorite!.namaList} ${currentUser.name}',
                style: styleAppBar)),
        SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => ListSemeton(
                      favorite: keluargas[index],
                    ),
                childCount: keluargas.length))
      ],
    );
  }
}

class ListSemeton extends StatelessWidget {
  final Favorite? favorite;
  const ListSemeton({Key? key, this.favorite}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white38,
      child: Container(
        child: ListTile(
          leading: ProfileAvatar(imageUrl: favorite!.user!.imageUrl),
          title: Text('${favorite!.user!.name} • ${favorite!.user!.status}',
              style: styleHeader),
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
