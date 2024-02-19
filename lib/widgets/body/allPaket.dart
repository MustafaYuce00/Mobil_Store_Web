import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:mobil_store_web/widgets/body/paket.dart';

List<String> paketBaslik = [
  'Paket 1',
  'Paket 2',
  'Paket 3',
  'Paket 4',
  'Paket 5',
  'Paket 6',
  'Paket 7',
  'Paket 8'
];
List<String> paketIcerik = [
  'Seçeceğiniz 3 Yurtiçi Pazaryeri Entegrasyonu Anlık Güncelleme Tek Tuşla Fatura Hızlı Ürün Ekleme Toplu Fatura Yazdırma Toplu İşlemler Online Sürekli Eğitimler',
  'Seçeceğiniz 3 Yurtiçi Pazaryeri Entegrasyonu Anlık Güncelleme Tek Tuşla Fatura Hızlı Ürün Ekleme Toplu Fatura Yazdırma Toplu İşlemler Online Sürekli Eğitimler',
  'Seçeceğiniz 3 Yurtiçi Pazaryeri Entegrasyonu Anlık Güncelleme Tek Tuşla Fatura Hızlı Ürün Ekleme Toplu Fatura Yazdırma Toplu İşlemler Online Sürekli Eğitimler',
  'Seçeceğiniz 3 Yurtiçi Pazaryeri Entegrasyonu Anlık Güncelleme Tek Tuşla Fatura Hızlı Ürün Ekleme Toplu Fatura Yazdırma Toplu İşlemler Online Sürekli Eğitimler',
  'Seçeceğiniz 3 Yurtiçi Pazaryeri Entegrasyonu Anlık Güncelleme Tek Tuşla Fatura Hızlı Ürün Ekleme Toplu Fatura Yazdırma Toplu İşlemler Online Sürekli Eğitimler',
  'Seçeceğiniz 3 Yurtiçi Pazaryeri Entegrasyonu Anlık Güncelleme Tek Tuşla Fatura Hızlı Ürün Ekleme Toplu Fatura Yazdırma Toplu İşlemler Online Sürekli Eğitimler',
  'Seçeceğiniz 3 Yurtiçi Pazaryeri Entegrasyonu Anlık Güncelleme Tek Tuşla Fatura Hızlı Ürün Ekleme Toplu Fatura Yazdırma Toplu İşlemler Online Sürekli Eğitimler',
  'Seçeceğiniz 3 Yurtiçi Pazaryeri Entegrasyonu Anlık Güncelleme Tek Tuşla Fatura Hızlı Ürün Ekleme Toplu Fatura Yazdırma Toplu İşlemler Online Sürekli Eğitimler',
];

List<String> paketFiyat = [
  'Paket Fiyat 1000',
  'Paket Fiyat 2000',
  'Paket Fiyat 3000',
  'Paket Fiyat 4000',
  'Paket Fiyat 5000',
  'Paket Fiyat 6000',
  'Paket Fiyat 7000',
  'Paket Fiyat 8000'
];
List<String> paketImg = [
  'assets/1.png',
  'assets/2.png',
  'assets/3.png',
  'assets/4.png',
  'assets/1.png',
  'assets/2.png',
  'assets/3.png',
  'assets/4.png'
];

allPaket(context) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.8,
    height: MediaQuery.of(context).size.height * 0.5,
    child: Swiper(
      onIndexChanged: (value) {},
      onTap: (value) async {},
      itemBuilder: (BuildContext context, int index) {
        return paket(context, index, paketBaslik[index], paketIcerik[index],
            paketFiyat[index], paketImg[index]);
      },
      itemCount: 8,
      viewportFraction: 0.8,
      scale: 0.9,
      fade: 0.5,
      curve: Curves.easeInOut,
      autoplay: true,
      autoplayDelay: 7000,
      //   loop: false,
      scrollDirection: Axis.horizontal,
    ),
  );
}
