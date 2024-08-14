import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:movies_app/data/entity/filmler_cevap.dart';
import 'package:movies_app/data/entity/movies.dart';
import 'package:movies_app/sqlite/veritabani_yardimcisi.dart';

class MoviesDaoRepository{

  List<Movies> parseFilmler(String cevap){
    return FilmlerCevap.fromJson(json.decode(cevap)).filmler;
  }

  Future<List<Movies>> filmleriYukle() async {
    var url = "http://kasimadalan.pe.hu/filmler_yeni/tum_filmler.php";
    var cevap = await Dio().get(url);
    return parseFilmler(cevap.data.toString());
  }


}