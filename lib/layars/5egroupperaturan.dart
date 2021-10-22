import 'package:btr/datas.dart';
import 'package:btr/widgets/xwidgets.dart';
import 'package:flutter/material.dart';

class GroupPeraturanLayar extends StatefulWidget {
  const GroupPeraturanLayar({Key? key}) : super(key: key);

  @override
  _GroupPeraturanLayarState createState() => _GroupPeraturanLayarState();
}

class _GroupPeraturanLayarState extends State<GroupPeraturanLayar> {
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
          mobile: _GroupPeraturanMobile(controller: _trackingScrollController),
        ),
      ),
    );
  }
}

class _GroupPeraturanMobile extends StatelessWidget {
  final TrackingScrollController? controller;
  const _GroupPeraturanMobile({Key? key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: controller,
      slivers: [
        SliverPadding(
          padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
          sliver: SliverToBoxAdapter(
            child: AnggotaGroup(onlineGroup: abbaGroup),
          ),
        ),
        SliverToBoxAdapter(
            child: CreatePostContainer(currentUser: currentUser)),
        SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => PostContainer(post: groupPeraturans[index]),
                childCount: groupPeraturans.length)),
      ],
    );
  }
}
