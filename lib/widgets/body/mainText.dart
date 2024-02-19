import 'package:flutter/material.dart';

mainText(context) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.8,
    height: 500,
    child: Text(
      'Güvenilir alışverişin ve çeşitli avantajların buluşma noktası olarak sizlere sunulan mobil satış uygulamamız, kullanıcılarına lisanslı satışlar, komisyonlu veya komisyonsuz satış seçenekleriyle geniş bir ürün yelpazesi sunmaktadır. Bu uygulama ile müşteriler, kaliteli ve lisanslı ürünleri uygun fiyatlarla satın almanın keyfini çıkarabilirler. Ayrıca, kendilerine en uygun ödeme seçeneklerini seçebilme özgürlüğüne sahip olarak bütçelerini kontrol altında tutabilirler. Fırsat dolu paketlerimizle her bütçeye hitap ederken, kullanıcı dostu arayüzümüz ve hızlı alışveriş deneyimiyle müşterilerimize kolaylık sağlıyoruz. Anında satın alma imkanı, güvenli ödeme seçenekleri ve anlık bildirimlerle kampanya ve indirimlerden haberdar olma avantajlarıyla uygulamamız, alışverişinizi daha keyifli hale getiriyor. Müşteri memnuniyetini ön planda tutan yaklaşımımızla, siz de mobil uygulamamızı indirip sınırsız alışverişin tadını çıkarabilir, en yeni fırsatları kaçırmadan avantajlı alışveriş deneyiminin keyfini sürebilirsiniz. Şimdi indirin ve alışverişinizi daha güvenli ve uygun hale getirin.',
      style: TextStyle(
        fontSize: 22.0,
        fontWeight: FontWeight.w300,
        color: Colors.black,
      ),
    ),
  );
}
