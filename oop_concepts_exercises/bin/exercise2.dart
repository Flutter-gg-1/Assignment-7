// ignore_for_file: non_constant_identifier_names 

class Person{
  String name , email;

  Person({
    required this.name,
    required this.email
  });
}

class Author extends Person{
  static int _counter = 1;
  int? id;
  Author({required super.name, required super.email}){id =_counter++;}
}

class Book {
  String name , ISBN;
  int editionNumber;
  Author author;

  Book({
    required this.name,
    required this.ISBN,
    required this.editionNumber,
    required this.author
  });
}

class Customer extends Person {
  Customer({required super.name, required super.email});

  List<Book> bookList = [];

  addBook(Book book){
    bookList.add(book);
  }

  printInformation(){
    print('Customer info : \nName : $name\nEmail : $email');
    print('======Information about each book collect by $name======');
    for (var element in bookList) {
      print('Name : ${element.name}');
      print('ISBN : ${element.ISBN}');
      print('Edition Number : ${element.editionNumber}');
      print('Author : ${element.author.name}');
    }
  }
}