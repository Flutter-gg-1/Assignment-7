import 'author.dart';

class Book {
  //here I defined 3 attrbutes with attrbute class of the Author then I used it in the constracter
  String? name;
  String? isbn;
  int? editionNumber;
  Author? auther;
  Book(
      {required this.name,
      required this.isbn,
      required this.editionNumber,
      required this.auther});
}
