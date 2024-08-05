class Person {
  String? name;
  int? email;
  Person(this.name, this.email);
}

class Author extends Person {
  static int id = 1;
  Author(super.name, super.email);
}

class Book {
  String? name;
  String? iISBN;
  int? editionNumber;
  Book? author;
}
