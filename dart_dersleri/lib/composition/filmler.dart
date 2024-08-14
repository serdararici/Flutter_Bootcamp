import 'package:dart_dersleri/composition/kategoriler.dart';
import 'package:dart_dersleri/composition/yonetmenler.dart';

class Filmler{
  int film_id;
  String film_ad;
  int film_yil;
  Kategoriler kategori;
  Yonetmenler yonetmen;

  Filmler(
      {required this.film_id,
      required this.film_ad,
      required this.film_yil,
      required this.kategori,
      required this.yonetmen});
}