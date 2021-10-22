import 'package:flutter/material.dart';

class TabMenu {
  final String? judul;
  final IconData? ikon;

  const TabMenu({this.judul, this.ikon});
}

const List<TabMenu> isiTabMenu = [
  TabMenu(judul: 'home', ikon: Icons.home),
  TabMenu(judul: 'group', ikon: Icons.group),
  TabMenu(judul: 'favorite', ikon: Icons.favorite),
  TabMenu(judul: 'famTree', ikon: Icons.family_restroom),
  TabMenu(judul: 'notification', ikon: Icons.notifications),
];

class GroupTabMenu {
  final String? judul;
  final IconData? ikon;

  const GroupTabMenu({this.judul, this.ikon});
}

final List<GroupTabMenu> isiGroupTabMenu = [
  GroupTabMenu(judul: 'Umum', ikon: Icons.public),
  GroupTabMenu(judul: 'Info', ikon: Icons.info_outline),
  GroupTabMenu(judul: 'Laporan', ikon: Icons.book_sharp),
  GroupTabMenu(judul: 'Peraturan', ikon: Icons.rule_folder_rounded),
];
