class Movies{
  int id;
  String name;
  String image;
  int price;

  Movies({required this.id, required this.name, required this.image, required this.price});

  factory Movies.fromJson(Map<String,dynamic> json) {
    return Movies(
        id: json["id"] as int,
        name: json["ad"] as String,
        image: json["resim"] as String,
        price: json["fiyat"] as int);
  }
}