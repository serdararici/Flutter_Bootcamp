import 'package:dart_dersleri/composition/filmler.dart';
import 'package:dart_dersleri/composition/kategoriler.dart';
import 'package:dart_dersleri/composition/yonetmenler.dart';

void main(){
  var k1 = Kategoriler(kategori_id: 1, kategori_ad: "Dram");
  var k2 = Kategoriler(kategori_id: 2, kategori_ad: "Bilim Kurgu");

  var y1 = Yonetmenler(yonetmen_id: 1, yonetymen_ad: "Quentin Tarantino");
  var y2 = Yonetmenler(yonetmen_id: 2, yonetymen_ad: "Christopher Nolan");


  var f1 = Filmler(film_id: 1, film_ad: "Django", film_yil: 2013, kategori: k1, yonetmen: y1);


  print("Film İd : ${f1.film_id}");
  print("Film ad : ${f1.film_ad}");
  print("Film yıl : ${f1.film_yil}");
  print("Film kategori : ${f1.kategori.kategori_ad}");
  print("Film yönetmen : ${f1.yonetmen.yonetymen_ad}");

}