import 'package:btr/models/xmodels.dart';

class Favorite {
  final String namaList;
  final String? status;
  final User? user;

  const Favorite({required this.namaList, this.user, this.status});
}
