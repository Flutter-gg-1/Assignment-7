// ignore_for_file: non_constant_identifier_names 

class Person{
  String name , email;

  Person({
    required this.name,
    required this.email
  });
}

class Author extends Person{
  static int id = 1;
  Author({required super.name, required super.email}){id++;}
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
    print('======Information about each book======');
    for (var element in bookList) {
      print(element);
    }
  }
}