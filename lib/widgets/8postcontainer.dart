import 'package:btr/models/xmodels.dart';
import 'package:btr/standard.dart';
import 'package:btr/widgets/xwidgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PostContainer extends StatelessWidget {
  final Post? post;
  const PostContainer({Key? key, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 4.0),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PostHeader(post: post),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                post!.caption,
                softWrap: true,
                textWidthBasis: TextWidthBasis.parent,
                textAlign: TextAlign.justify,
                // overflow: TextOverflow.ellipsis, kalau lebih dari batasan jumlah row akan muncul ...(titik)
                // maxLines: 5, kalau diperlukan ada batasan jumlah row
              ),
            ),
            post!.imageUrl != null ? SizedBox.shrink() : SizedBox(height: 8.0),
            post!.imageUrl != null
                ? CachedNetworkImage(imageUrl: post!.imageUrl)
                : SizedBox.shrink(),
            Row(
              children: [
                Card(
                  child: Container(
                      margin: EdgeInsets.only(left: 8.0),
                      padding: EdgeInsets.all(7.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: WarnaBerkah.warnaDasar),
                      child: Icon(Icons.thumb_up_alt_outlined, size: 18.0)),
                ),
                SizedBox(width: 3.0),
                Expanded(
                  child: Text('${post!.likes}'),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Text('${post!.comments} comments'),
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 8.0),
                //   child: Text('${post!.shares} shares'),
                // ),
              ],
            ),
            Divider(thickness: 1.0, color: Colors.grey),
            Row(
              children: [
                _postStatistic(
                    icon: Icons.thumb_up_alt_outlined,
                    label: 'like',
                    press: () {
                      print('like+1');
                    }),
                _postStatistic(
                    icon: Icons.comment,
                    label: 'comment',
                    press: () {
                      print('komen+1');
                    }),
                // _postStatistic(
                //     icon: Icons.share,
                //     label: 'share',
                //     press: () {
                //       print('share+1');
                //     }),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _postStatistic({IconData? icon, String? label, Function()? press}) {
    return Expanded(
      child: InkWell(
        onTap: press,
        child: Container(
          height: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 20),
              SizedBox(width: 8.0),
              Text(
                label!,
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
