import 'package:btr/models/xmodels.dart';

class Group {
  final User user;
  final String name;
  final String timeAgo;
  final String imageUrl;

  const Group(
      {required this.user,
      required this.name,
      required this.timeAgo,
      required this.imageUrl});
}
