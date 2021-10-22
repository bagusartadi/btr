import 'package:btr/datas.dart';
import 'package:btr/layars/7listkeluarga.dart';
import 'package:btr/layars/8listkerabat.dart';
import 'package:btr/models/xmodels.dart';
import 'package:btr/standard.dart';
import 'package:btr/widgets/2profileavatar.dart';
import 'package:btr/widgets/1responsive.dart';
import 'package:flutter/material.dart';

class FavoriteLayar extends StatefulWidget {
  const FavoriteLayar({Key? key}) : super(key: key);

  @override
  _FavoriteLayarState createState() => _FavoriteLayarState();
}

class _FavoriteLayarState extends State<FavoriteLayar> {
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
          mobile: _MobileFavoriteLayar(controller: _trackingScrollController),
        ),
      ),
    );
  }
}

class _MobileFavoriteLayar extends StatelessWidget {
  final TrackingScrollController? controller;
  const _MobileFavoriteLayar({Key? key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: controller,
      slivers: [
        SliverAppBar(
          title: Text('Favorite', style: styleAppBar),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  ProfileAvatar(isActive: true, imageUrl: currentUser.imageUrl),
            ),
          ],
        ),
        SliverToBoxAdapter(child: CreatePostFavContainer()),
        SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => FavoriteList(favorite: favorites[index]),
                childCount: favorites.length)),
      ],
    );
  }
}

class FavoriteList extends StatelessWidget {
  final Favorite? favorite;
  const FavoriteList({Key? key, this.favorite}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 4.0),
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return favorite!.namaList == 'Keluarga'
                ? ListKeluarga(favorite: favorite)
                : ListKerabat(favorite: favorite);
          }));
        },
        child: Container(
          margin: EdgeInsets.all(8.0),
          child: ListTile(
            title: Text('Daftar ${favorite!.namaList}', style: styleHeader),
            trailing: Icon(Icons.arrow_forward),
          ),
        ),
      ),
    );
  }
}

class CreatePostFavContainer extends StatelessWidget {
  const CreatePostFavContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 4.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Icon(Icons.search, size: 30.0, color: Colors.grey),
            SizedBox(width: 10.0),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'cari kerabat disini...',
                    hintStyle: TextStyle(
                        fontSize: 27.0,
                        color: Colors.grey,
                        fontStyle: FontStyle.italic),
                    border: InputBorder.none),
              ),
            )
          ],
        ),
      ),
    );
  }
}
