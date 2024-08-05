// class to represent a person
class Person {
  String? name;
  String? email;

  Person({required this.name, this.email});
}

class Author extends Person {
  static int id = 1;
  
  Author({required super.name, required super.email}) {
    id++;
  }
}

class Book {
  String? name;
  String? ISBN;
  int? editionNumber;
  Author? author;

  Book({required this.name, required this.ISBN, required this.editionNumber, required this.author});
}