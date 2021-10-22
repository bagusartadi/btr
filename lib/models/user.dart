class User {
  final String name;
  final String? status;
  final String? imageUrl;
  final String? alamat;
  final String? anakke;

  const User(
      {this.imageUrl,
      required this.name,
      this.alamat,
      this.status,
      this.anakke});
}
