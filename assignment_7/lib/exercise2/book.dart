import 'author.dart';

/*
*
* Book
*
* */
class Book {
  String name;
  String isbn;
  int editionNumber;
  Author author;

  // Constructor
  Book(this.name, this.isbn, this.editionNumber, this.author);

  @override
  String toString() {
    return 'Book: $name, ISBN: $isbn, Edition: $editionNumber, Author: ${author.name}';
  }
}