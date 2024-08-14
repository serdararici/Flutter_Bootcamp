import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/data/entity/movies.dart';
import 'package:movies_app/data/repo/moviesdao_repository.dart';

class MainpageCubit extends Cubit<List<Movies>>{
  MainpageCubit():super(<Movies>[]);

  var frepo = MoviesDaoRepository();
  Future<void>filmleriYukle() async {
    var liste = await frepo.filmleriYukle();
    emit(liste);
  }
}