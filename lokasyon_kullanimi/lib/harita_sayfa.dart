import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HaritaSayfa extends StatefulWidget {
  const HaritaSayfa({super.key});

  @override
  State<HaritaSayfa> createState() => _HaritaSayfaState();
}

class _HaritaSayfaState extends State<HaritaSayfa> {
  Completer<GoogleMapController> haritaKontrol = Completer();

  //39.9035233,32.5979578
  var baslangicKonum = CameraPosition(target: const LatLng(39.9035233, 32.5979578),zoom: 11);

  List<Marker> isaretler = <Marker>[];

  Future<void> konumaGit() async {
    GoogleMapController controller = await haritaKontrol.future;

    //41.0370175,28.974792
    var gidilecekKonum = CameraPosition(target: const LatLng(41.0370175, 28.974792),zoom: 15);

    var gidilecekIsaret = const Marker(
        markerId: MarkerId("id"),
        position: LatLng(41.0370175, 28.974792),
      infoWindow: InfoWindow(title: "Taksim", snippet: "Taksim Meydan"),
    );

    setState(() {
      isaretler.add(gidilecekIsaret);
    });

    controller.animateCamera(CameraUpdate.newCameraPosition(gidilecekKonum));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Harita Kullanımı"),),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(width: 300, height: 300,
              child: GoogleMap(
                  initialCameraPosition: baslangicKonum,
                  mapType: MapType.normal,
                  markers: Set<Marker>.of(isaretler),
                  onMapCreated: (GoogleMapController controller) {
                      haritaKontrol.complete(controller);
                  },
              ),
            ),
            ElevatedButton(onPressed: (){
                konumaGit();
            }, child: const Text("Konuma Git"))
          ],
        ),
      ),
    );
  }
}


