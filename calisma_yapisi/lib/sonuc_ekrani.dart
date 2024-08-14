import 'package:calisma_yapisi/anasayfa.dart';
import 'package:calisma_yapisi/oyun_ekrani.dart';
import 'package:flutter/material.dart';

class SonucEkrani extends StatefulWidget {
  const SonucEkrani({super.key});

  @override
  State<SonucEkrani> createState() => _SonucEkraniState();
}

class _SonucEkraniState extends State<SonucEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sonuç Ekranı"), centerTitle: true,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pop(context);  // pop bir önceki sayfaya dönmeye yarar.
            }, child: const Text("Geri Dön")),
            ElevatedButton(onPressed: (){
              Navigator.of(context).popUntil((route) => route.isFirst);    //anasayfaya kadar dönmek için
            }, child: const Text("Anasayfaya Geri Dön")),
          ],
        ),
      ),
    );
  }
}
