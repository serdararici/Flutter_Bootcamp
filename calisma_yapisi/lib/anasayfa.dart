
import 'package:calisma_yapisi/kisiler.dart';
import 'package:calisma_yapisi/oyun_ekrani.dart';
import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  int sayac = 0;
  bool kontrol = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("initState çalıştı");
  }

  Future<int> toplama(int sayi1, int sayi2) async {
    int toplam = sayi1 + sayi2;
    return toplam;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Anasayfa"), centerTitle: true,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Sonuç : $sayac"),
            ElevatedButton(onPressed: (){
              setState(() {
                sayac = sayac+1;
              });
            },
                child: const Text("Tıkla")),
            ElevatedButton(onPressed: (){
              var kisi = Kisiler(ad: "Ahmet", yas: 23, boy: 1.96, bekar: false);
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  OyunEkrani(kisi:kisi)))
                  .then((value) {
                  print("Anasayfaya dönüldü.");
              });
            }, child: const Text("Başla")),
            Visibility(visible: kontrol,child: const Text("Merhaba")),
            Text(kontrol ? "Merhaba": "Güle güle", style: TextStyle(color: kontrol ? Colors.blue : Colors.red),),
            // dart dilinde if kullanrak bu şekilde aynı şeyi yazabiliriz.
            ((){
              if(kontrol){
                return const Text("Merhaba");
              }else{
                return const Text("Güle Güle");
              }
            }()),
            ElevatedButton(onPressed: (){
              setState(() {
                kontrol = true;
              });
            }, child: const Text("Durum 1 (True)")),
            ElevatedButton(onPressed: (){
              setState(() {
                kontrol = false;
              });
            }, child: const Text("Durum 1 (False)")),
            FutureBuilder<int> (
              future: toplama(10, 20),
              builder: (context,snaphot){
                if(snaphot.hasError){
                  return const Text("Hata oluştu.");
                }
                if(snaphot.hasData){
                  return Text("Sonuç : ${snaphot.data}");
                }else{
                  return const Text("Sonuç yok!");
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
