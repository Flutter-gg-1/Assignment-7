// person class
class Person{
  String? name;
  String? email;
  Person({required this.name, required this.email});
}

// Author class
class Author extends Person{
  int id = 1;
  Author({required super.name, required super.email, required this.id}){
    id++;
  }
}

// book class
class Book{
  String? name;
  String? isbn;
  int? aditionNumber;
  Author? author;

  Book({this.name, this.author, this.aditionNumber, this.isbn});

}


