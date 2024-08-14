import 'package:calisma_yapisi/sonuc_ekrani.dart';
import 'package:flutter/material.dart';
import 'package:calisma_yapisi/kisiler.dart';

class OyunEkrani extends StatefulWidget {
  Kisiler kisi;


  OyunEkrani({required this.kisi});

  @override
  State<OyunEkrani> createState() => _OyunEkraniState();
}

class _OyunEkraniState extends State<OyunEkrani> {

  Future<bool> geriDonusTusu (BuildContext context)  async {
    print("Navigaton geri tusu seçildi.");
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Oyun Ekranı"),
        leading: IconButton( onPressed: (){
          print("Appbar geri tuşu seçildi");
          Navigator.pop(context);  // pop bir önceki sayfaya dönmeye yarar.
        }, icon: const Icon(Icons.arrow_circle_left),
        ),
        centerTitle: true,),
      body: WillPopScope(
        onWillPop: () => geriDonusTusu(context),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("${widget.kisi.ad} - ${widget.kisi.yas} - ${widget.kisi.boy} - ${widget.kisi.bekar}"),
              ElevatedButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SonucEkrani()));
              }, child: const Text("Bitti")),
            ],
          ),
        ),
      ),
    );
  }
}
