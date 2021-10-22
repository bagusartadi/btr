import 'package:btr/standard.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final bool isActive;
  final String? imageUrl;
  const ProfileAvatar({Key? key, this.imageUrl, this.isActive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircleAvatar(radius: 20, backgroundColor: WarnaBerkah.warnaOnline),
          CircleAvatar(
            radius: isActive ? 17.8 : 20,
            backgroundImage: CachedNetworkImageProvider(imageUrl!),
          )
        ],
      ),
    );
  }
}
