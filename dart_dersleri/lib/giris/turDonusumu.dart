void main(){
  //sayısaldan sayısala dönüşüm
  int i = 56;
  double d = 78.56;

  int sonuc1 = d.toInt();
  double sonuc2 = i.toDouble();
  print(sonuc1);
  print(sonuc2);

  //sayısaldan metine dönüşüm
  String sonuc3 = i.toString(); // "56"
  String sonuc4 = d.toString(); // "78.67"
  print(sonuc3);
  print(sonuc4);

  // Metinden sayısala dönüşüm
  String yazi1 = "25";
  String yazi2 = "51.45";

  int sonuc5 = int.parse(yazi1); //25
  double sonuc6 = double.parse(yazi2); //51.45
  print(sonuc5);
  print(sonuc6);

}