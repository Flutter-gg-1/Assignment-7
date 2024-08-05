import 'author.dart';

class Book {
  String? name;
  String? isbn;
  String? editionNumber;
  Author? auther;
  Book(
      {required this.name,
      required this.isbn,
      required this.editionNumber,
      required this.auther});
}
