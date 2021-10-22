import 'package:btr/datas.dart';
import 'package:btr/widgets/xwidgets.dart';
import 'package:flutter/material.dart';

class GroupInfoLayar extends StatefulWidget {
  const GroupInfoLayar({Key? key}) : super(key: key);

  @override
  _GroupInfoLayarState createState() => _GroupInfoLayarState();
}

class _GroupInfoLayarState extends State<GroupInfoLayar> {
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
          mobile: _GroupInfo(scrollController: _trackingScrollController),
        ),
      ),
    );
  }
}

class _GroupInfo extends StatelessWidget {
  final TrackingScrollController? scrollController;
  const _GroupInfo({Key? key, this.scrollController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: scrollController,
      slivers: [
        SliverPadding(
          padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
          sliver: SliverToBoxAdapter(
            child: AnggotaGroup(onlineGroup: abbaGroup),
          ),
        ),
        SliverToBoxAdapter(
          child: CreatePostContainer(currentUser: currentUser),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => PostContainer(
                      post: groupInfos[index],
                    ),
                childCount: groupInfos.length))
      ],
    );
  }
}
