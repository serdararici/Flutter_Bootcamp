import 'package:flutter/material.dart';
import 'package:movies_app/data/entity/movies.dart';

class DetailsPage extends StatefulWidget {
  Movies movie;
  DetailsPage({required this.movie});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text(widget.movie.name),),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network("http://kasimadalan.pe.hu/filmler_yeni/resimler/${widget.movie.image}"),
            Text("${widget.movie.price} ₺", style: TextStyle(fontSize: 50),),
          ],
        ),
      )
    );
  }
}
