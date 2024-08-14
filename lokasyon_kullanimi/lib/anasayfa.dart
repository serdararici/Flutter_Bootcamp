import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  double enlem = 0.0;
  double boylam = 0.0;

  Future<void> konumBilgisiAl() async {
    var konum = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);   //konumun ne kadar doğru geldiği ile alakalı
    setState(() {
      enlem = konum.latitude;
      boylam = konum.longitude;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Konum Kullanımı"),),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Enlem : $enlem" , style: TextStyle(fontSize: 30),),
            Text("Boylam : $boylam" , style: TextStyle(fontSize: 30),),
            ElevatedButton(onPressed: (){
              konumBilgisiAl();
            }, child: const Text("Konum Al"))
          ],
        ),
      ),
    );
  }
}
