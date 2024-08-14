import 'package:contacts_app/data/repo/kisilerdao_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class KayitSayfaCubit extends Cubit<void>{
  KayitSayfaCubit():super(0);

  var krepo = KisilerDaoRepository();

  Future<void> kaydet(String kisi_ad, String  kisi_tel) async {
    await krepo.kaydet(kisi_ad, kisi_tel);
  }

}