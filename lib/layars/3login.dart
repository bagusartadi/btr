import 'package:btr/layars/xlayars.dart';
import 'package:btr/standard.dart';
import 'package:btr/widgets/xwidgets.dart';
import 'package:flutter/material.dart';

class LoginLayar extends StatelessWidget {
  const LoginLayar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        title: Text('BaliBanjar', style: styleAppBar),
      ),
      bottomNavigationBar: Tab(
          child: Text('Griya Kemenuh Tangeb-Banjar Tegehe-Singaraja',
              style: TextStyle(color: Colors.grey))),
      body: Stack(children: [
        Container(width: double.infinity, height: double.infinity),
        Container(
          margin: EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                LogoBB(),
                Text('Masuk',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 45.0,
                        letterSpacing: 1.2,
                        fontWeight: FontWeight.bold)),
                Divider(
                    color: Colors.white,
                    thickness: 3,
                    indent: 50.0,
                    endIndent: 50.0),
                KotakIsian(
                    label: 'email', textInputType: TextInputType.emailAddress),
                KotakIsian(
                    label: 'password',
                    textInputType: TextInputType.visiblePassword,
                    textAcak: true),
                TombolAccess(
                    label: 'Masuk',
                    press: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomeNavi()));
                    }),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DaftarLayar()));
                  },
                  child: RichText(
                    text: TextSpan(
                        style: TextStyle(
                            fontSize: 20.0, fontStyle: FontStyle.italic),
                        children: [
                          TextSpan(text: 'belum memiliki akun?  '),
                          TextSpan(
                              text: 'Daftar',
                              style: TextStyle(
                                  color: Colors.blue[900],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25.0)),
                        ]),
                  ),
                ),
                SizedBox(height: 300.0),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
