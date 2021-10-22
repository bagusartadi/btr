import 'package:btr/standard.dart';
import 'package:btr/widgets/xwidgets.dart';
// import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:btr/layars/xlayars.dart';

class DaftarLayar extends StatefulWidget {
  const DaftarLayar({Key? key}) : super(key: key);

  @override
  State<DaftarLayar> createState() => _DaftarLayarState();
}

class _DaftarLayarState extends State<DaftarLayar> {
  List<String>? status = ['anak', 'istri', 'suami'];
  String? selectedStatus;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(elevation: 1.0, title: Text("BaliBanjar", style: styleAppBar)),
      bottomNavigationBar: Tab(
          child: Text('Griya Kemenuh Tangeb-Banjar Tegehe-Singaraja',
              style: TextStyle(color: Colors.grey))),
      body: Stack(
        children: [
          Container(width: double.infinity, height: double.infinity),
          Container(
            margin: EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: Column(
                children: [
                  LogoBB(),
                  Text('Selamat Datang',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5)),
                  Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Divider(
                          color: Colors.white,
                          thickness: 2.0,
                          indent: 50.0,
                          endIndent: 50)),
                  KotakIsian(label: 'nama', textInputType: TextInputType.name),
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 8.0),
                      height: 70.0,
                      decoration: BoxDecoration(
                          color: WarnaBerkah.warnaDasar2,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.white60,
                                blurRadius: 5.0,
                                offset: Offset(0, 2)),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 10),
                        child: DropdownButton(
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                          dropdownColor: WarnaBerkah.warnaDasar2,
                          borderRadius: BorderRadius.circular(10.0),
                          elevation: 0,
                          items: status!
                              .map((e) =>
                                  DropdownMenuItem(child: Text(e), value: e))
                              .toList(),
                          value: selectedStatus,
                          onChanged: (value) {
                            setState(() {
                              selectedStatus = value as String;
                            });
                          },
                          hint: Text(
                            'pilih status',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                          isExpanded: true,
                        ),
                      )),
                  //alternative dropdown menu lebih simple:
                  // DropdownSearch(
                  //   items: ['anak', 'istri', 'suami'],
                  //   mode: Mode.MENU,
                  //   showSelectedItems: true,
                  //   selectedItem: 'anak',
                  //   hint: 'pilih status',
                  //   onChanged: (String? value) {
                  //     print(value);
                  //     selectedStatus = value;
                  //   },
                  //   dropdownSearchDecoration:
                  //       InputDecoration(border: InputBorder.none),
                  // ),
                  KotakIsian(
                      label: 'email',
                      textInputType: TextInputType.emailAddress),
                  KotakIsian(
                      label: 'password',
                      textInputType: TextInputType.visiblePassword,
                      textAcak: true),
                  KotakIsian(
                      label: 're-type password',
                      textInputType: TextInputType.visiblePassword,
                      textAcak: true),
                  TombolAccess(
                      label: 'Daftar',
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginLayar()));
                      }),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginLayar()));
                    },
                    child: RichText(
                      text: TextSpan(
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white,
                              fontStyle: FontStyle.italic),
                          children: [
                            TextSpan(text: 'Sudah pernah registrasi?  '),
                            TextSpan(
                                text: ' MASUK disini',
                                style: TextStyle(
                                    color: Colors.blue[900],
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold))
                          ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
