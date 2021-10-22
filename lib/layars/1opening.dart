import 'package:btr/layars/xlayars.dart';
import 'package:btr/standard.dart';
import 'package:btr/widgets/xwidgets.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OpeningLayar extends StatelessWidget {
  const OpeningLayar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BaliBanjar', style: styleAppBar),
      ),
      bottomNavigationBar: Tab(
          child: Text('Griya Kemenuh Tangeb-Banjar Tegehe-Singaraja',
              style: TextStyle(color: Colors.grey))),
      body: Stack(
        children: [
          Container(width: double.infinity, height: double.infinity),
          Container(
            margin: EdgeInsets.only(top: 20.0, left: 8.0, right: 8.0),
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DaftarLayar()));
                          },
                          child: Container(
                              alignment: Alignment.center,
                              height: 50.0,
                              decoration: BoxDecoration(
                                  color: WarnaBerkah.warnaDasar2,
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10.0),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.white60,
                                        blurRadius: 5.0,
                                        offset: Offset(0, 1))
                                  ]),
                              child: Text(
                                'Daftar',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: LogoBB()),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginLayar()));
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 50.0,
                            decoration: BoxDecoration(
                                color: WarnaBerkah.warnaDasar2,
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.white60,
                                      blurRadius: 5.0,
                                      offset: Offset(0, 1))
                                ]),
                            child: Text(
                              'Masuk',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 300,
                    child: Carousel(
                      dotColor: WarnaBerkah.warnaDasar2,
                      indicatorBgPadding: 10.0,
                      dotBgColor: Colors.transparent,
                      dotIncreaseSize: 1.0,
                      boxFit: BoxFit.contain,
                      images: [
                        InkWell(
                          onTap: () {
                            print('clicked1');
                          },
                          child: Image.asset('images/besakih.jpg'),
                        ),
                        Image.asset('images/beratan.jpg'),
                        NetworkImage(
                            'https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
                        Image.asset('images/ulundanu.jpg'),
                        InkWell(
                          onTap: () {
                            print('Indonesia');
                          },
                          child: Image.asset('images/merahputih.jpg'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 370.0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '\nTemukan anggota keluarga besar dan jelajahi sejarah keluarga besar kita. Disinilah cerita dan kegiatan keluarga besar dimulai.\n\nLayaknya bale banjar segala kegiatan group (candaan, informasi, laporan dan peraturan) dapat di akses dengan mudah, secara online. Privasi dan kerahasiaan anggota terjaga.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
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
