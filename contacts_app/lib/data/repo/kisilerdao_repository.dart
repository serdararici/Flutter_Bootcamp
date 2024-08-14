import 'dart:collection';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:contacts_app/data/entity/kisiler.dart';

class KisilerDaoRepository{
  var collectionKisiler = FirebaseFirestore.instance.collection("Kisiler");

  Future<void> kaydet(String kisi_ad, String  kisi_tel) async {
    /*var url = "http://kasimadalan.pe.hu/kisiler/insert_kisiler.php";
    var veri = {"kisi_ad":kisi_ad,"kisi_tel":kisi_tel};
    var cevap = await Dio().post(url,data: FormData.fromMap(veri));
    print("Kişi kaydet : ${cevap.data.toString()}");*/

    var yeniKisi = HashMap<String,dynamic>();
    yeniKisi["kisi_id"] = "";
    yeniKisi["kisi_ad"] = kisi_ad;
    yeniKisi["kisi_tel"] = kisi_tel;
    collectionKisiler.add(yeniKisi);
  }

  Future<void> guncelle(String kisi_id, String kisi_ad, String  kisi_tel) async {
    /*var url = "http://kasimadalan.pe.hu/kisiler/update_kisiler.php";
    var veri = {"kisi_id":kisi_id,"kisi_ad":kisi_ad,"kisi_tel":kisi_tel};
    var cevap = await Dio().post(url,data: FormData.fromMap(veri));
    print("Kişi Güncelle : ${cevap.data.toString()}");*/

    var guncellenenKisi = HashMap<String,dynamic>();
    guncellenenKisi["kisi_ad"] = kisi_ad;
    guncellenenKisi["kisi_tel"] = kisi_tel;
    collectionKisiler.doc(kisi_id).update(guncellenenKisi);
  }

  Future<void> sil(String kisi_id) async {
    /*var url = "http://kasimadalan.pe.hu/kisiler/delete_kisiler.php";
    var veri = {"kisi_id":kisi_id};
    var cevap = await Dio().post(url,data: FormData.fromMap(veri));
    print("Kişi Sil : ${cevap.data.toString()}");*/

    collectionKisiler.doc(kisi_id).delete();
  }

}