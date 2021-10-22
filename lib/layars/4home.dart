import 'package:btr/datas.dart';
import 'package:btr/standard.dart';
import 'package:btr/widgets/xwidgets.dart';
import 'package:flutter/material.dart';

class HomeLayar extends StatefulWidget {
  const HomeLayar({Key? key}) : super(key: key);

  @override
  _HomeLayarState createState() => _HomeLayarState();
}

class _HomeLayarState extends State<HomeLayar> {
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
          mobile: _MobileHomeLayar(
            controller: _trackingScrollController,
          ),
        ),
      ),
    );
  }
}

class _MobileHomeLayar extends StatelessWidget {
  final TrackingScrollController? controller;
  const _MobileHomeLayar({Key? key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: controller,
      slivers: [
        SliverAppBar(
          title: Text('BaliBanjar', style: styleAppBar),
          actions: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: ProfileAvatar(
                    isActive: true, imageUrl: currentUser.imageUrl)),
          ],
        ),
        SliverToBoxAdapter(
            child: CreatePostContainer(currentUser: currentUser)),
        SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => PostContainer(
                      post: posts[index],
                    ),
                childCount: posts.length)),
      ],
    );
  }
}
