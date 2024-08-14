import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/data/entity/movies.dart';
import 'package:movies_app/ui/cubit/mainpage_cubit.dart';
import 'package:movies_app/ui/views/details_page.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<MainpageCubit>().filmleriYukle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Filmler"),),
      body: BlocBuilder<MainpageCubit, List<Movies>>(
        builder: (context,filmlerListesi){
          if(filmlerListesi.isNotEmpty){
            return GridView.builder(
              itemCount: filmlerListesi.length, //6
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,  // her satır da kaç adet grid olacağı
                  childAspectRatio: 1 / 1.8  // her grid için yatay ve dikey oranı
              ),
              itemBuilder: (context,indeks){
                var movie = filmlerListesi[indeks];
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage(movie: movie)));
                  },
                  child: Card(
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.network("http://kasimadalan.pe.hu/filmler_yeni/resimler/${movie.image}"),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("${movie.price} ₺",style: TextStyle(fontSize: 24),),
                            ElevatedButton(onPressed: (){
                              print("${movie.name} sepete eklendi.");
                            }, child: const Text("Sepet"))
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          }else{
            return const Center();
          }
        },
      )
    );
  }
}

