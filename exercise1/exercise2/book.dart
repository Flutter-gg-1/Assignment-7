import 'author.dart';

class Book {
  late String name;
  late String isbn;
  late String editionNo;
  late Author auther;
  Book(
      {required this.name,
      required this.isbn,
      required this.editionNo,
      required this.auther});

  void bookInfo() {
    print("_" * 20);
    print("Book information");
    print("Book Name: $name");
    print("Auther: ${auther.name}");
    print("Edition: $editionNo");
    print("Book ISBN $isbn");
    print("_" * 20);
  }
}
