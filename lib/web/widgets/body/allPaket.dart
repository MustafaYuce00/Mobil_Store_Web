import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

List<Map<String, String>> paketler = [
  {
    "baslik": "Paket 1",
    "icerik":
        "Seçeceğiniz 3 Yurtiçi Pazaryeri Entegrasyonu Anlık Güncelleme Tek Tuşla Fatura Hızlı Ürün Ekleme Toplu Fatura Yazdırma Toplu İşlemler Online Sürekli Eğitimler",
    "fiyat": "Paket Fiyat 1000",
    "img": "assets/1.png"
  },
  {
    "baslik": "Paket 2",
    "icerik":
        "Seçeceğiniz 3 Yurtiçi Pazaryeri Entegrasyonu Anlık Güncelleme Tek Tuşla Fatura Hızlı Ürün Ekleme Toplu Fatura Yazdırma Toplu İşlemler Online Sürekli Eğitimler",
    "fiyat": "Paket Fiyat 2000",
    "img": "assets/2.png"
  },
  {
    "baslik": "Paket 3",
    "icerik":
        "Seçeceğiniz 3 Yurtiçi Pazaryeri Entegrasyonu Anlık Güncelleme Tek Tuşla Fatura Hızlı Ürün Ekleme Toplu Fatura Yazdırma Toplu İşlemler Online Sürekli Eğitimler",
    "fiyat": "Paket Fiyat 3000",
    "img": "assets/3.png"
  },
  {
    "baslik": "Paket 4",
    "icerik":
        "Seçeceğiniz 3 Yurtiçi Pazaryeri Entegrasyonu Anlık Güncelleme Tek Tuşla Fatura Hızlı Ürün Ekleme Toplu Fatura Yazdırma Toplu İşlemler Online Sürekli Eğitimler",
    "fiyat": "Paket Fiyat 4000",
    "img": "assets/4.png"
  },
  {
    "baslik": "Paket 5",
    "icerik":
        "Seçeceğiniz 3 Yurtiçi Pazaryeri Entegrasyonu Anlık Güncelleme Tek Tuşla Fatura Hızlı Ürün Ekleme Toplu Fatura Yazdırma Toplu İşlemler Online Sürekli Eğitimler",
    "fiyat": "Paket Fiyat 5000",
    "img": "assets/1.png"
  },
  {
    "baslik": "Paket 6",
    "icerik":
        "Seçeceğiniz 3 Yurtiçi Pazaryeri Entegrasyonu Anlık Güncelleme Tek Tuşla Fatura Hızlı Ürün Ekleme Toplu Fatura Yazdırma Toplu İşlemler Online Sürekli Eğitimler",
    "fiyat": "Paket Fiyat 6000",
    "img": "assets/2.png"
  },
  {
    "baslik": "Paket 7",
    "icerik":
        "Seçeceğiniz 3 Yurtiçi Pazaryeri Entegrasyonu Anlık Güncelleme Tek Tuşla Fatura Hızlı Ürün Ekleme Toplu Fatura Yazdırma Toplu İşlemler Online Sürekli Eğitimler",
    "fiyat": "Paket Fiyat 7000",
    "img": "assets/3.png"
  },
  {
    "baslik": "Paket 8",
    "icerik":
        "Seçeceğiniz 3 Yurtiçi Pazaryeri Entegrasyonu Anlık Güncelleme Tek Tuşla Fatura Hızlı Ürün Ekleme Toplu Fatura Yazdırma Toplu İşlemler Online Sürekli Eğitimler",
    "fiyat": "Paket Fiyat 8000",
    "img": "assets/4.png"
  }
];

allPaket(context) {
  print(MediaQuery.of(context).size.width.toString() + "asdasdaaaaaaaaaaaaaaa");
  return Container(
    width: MediaQuery.of(context).size.width * 0.8,
    child: CarouselSlider(
        options: CarouselOptions(
            height: MediaQuery.of(context).size.width * 0.5,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3)),
        items: paketler.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                    //   color: Colors.blueGrey[100],
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: List.generate(
                          2, (index) => Color.fromARGB(255, 217, 207, 220)),
                    )),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        '${i['baslik']}',
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.03),
                      ),
                    ),
                    MediaQuery.of(context).size.width >= 600
                        ? Expanded(
                            child: Image.asset(
                              i['img'].toString(),
                              fit: BoxFit.fitWidth,
                            ),
                          )
                        : Container(),
                    Padding(
                      padding: EdgeInsets.all(
                          MediaQuery.of(context).size.width * 0.01),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.height * 0.15,
                        child: Text(
                          i['icerik'].toString(),
                          style: TextStyle(
                            fontSize: 16,
                            overflow: TextOverflow.ellipsis,
                          ),
                          maxLines: 7,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(
                          MediaQuery.of(context).size.width * 0.02),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("Detaylı Bilgi Al"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey[300],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        }).toList()),
  );
}
