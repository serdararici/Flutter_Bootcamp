import 'package:calisma_yapisi/anasayfa.dart';
import 'package:calisma_yapisi/bottom_nav_bar_example/bottom_navigation_sayfa.dart';
import 'package:calisma_yapisi/kullanici_etkilesimi/kullanici_etkilisimi_sayfa.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const KullaniciEtkilesimiSayfa(),
    );
  }
}
