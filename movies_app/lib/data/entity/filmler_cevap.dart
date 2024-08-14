import 'package:movies_app/data/entity/movies.dart';

class FilmlerCevap {
  List<Movies> filmler;
  int success;

  FilmlerCevap({required this.filmler, required this.success});

  factory FilmlerCevap.fromJson(Map<String,dynamic> json) {
    var jsonArray = json["filmler"] as List;
    var success = json["success"] as int;

    var filmler = jsonArray.map((jsonArrayNesnesi) => Movies.fromJson(jsonArrayNesnesi)).toList();

    return FilmlerCevap(filmler: filmler, success: success);
  }
}