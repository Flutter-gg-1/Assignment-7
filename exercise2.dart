import 'dart:io';
import 'package:ansicolor/ansicolor.dart';

final AnsiPen greenPen = AnsiPen()..green();
final AnsiPen bluePen = AnsiPen()..blue();
final AnsiPen blackPen = AnsiPen()..black();
final AnsiPen grayPen = AnsiPen()..gray();
final AnsiPen yalowPen = AnsiPen()..yellow();
final AnsiPen magentapen = AnsiPen()..magenta();
///
// Person class
class Person {
  String name;
  String email;

  Person({required this.name, required this.email});
}

// Author class
class Author extends Person {
  static int _idCounter = 1;
  int id;

  Author({required String name, required String email})
      : id = _idCounter++,
        super(name: name, email: email);
}
  ///
//Book class
class Book {
  String name;
  String isbn;
  int editionNumber;
  Author author;
  Book({
    required this.name,
    required this.isbn,
    required this.editionNumber,
    required this.author,
  });
}

// Customer class
class Customer extends Person {
  //create list
  List<Book> bookList = [];
  Customer({required String name, required String email})
      : super(name: name, email: email);

  void addBook(Book book) {
    bookList.add(book);
  }
//method display info
  void printInformation() {
    print('${bluePen('Customer Name:')} ${magentapen(name)}');
    print('${bluePen('Customer Email:')} ${magentapen(email)}');
    print(greenPen('Purchased Books:'));
    for (var book in bookList) {
      print('${bluePen('Book Name:')} ${greenPen(book.name)}');
      print('${bluePen('ISBN:')} ${greenPen(book.isbn)}');
      print('${bluePen('Edition Number:')} ${greenPen(book.editionNumber)}');
      print(
          '${bluePen('Author:')} ${greenPen(book.author.name)} ${bluePen('ID:')} ${greenPen(book.author.id)} ');
      print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
    }
  }
}

//main class
void main() {
  print(magentapen("..................................."));
  print("..............Welcome..............");
  print(magentapen("..................................."));
  print("please enter choose option :");
  print(" 1. Show Author IDs. ");

  print(" 2. Show customer Info.");
  // print("3. Exit ");
  int? input;
// using try -catch and using switch
  try {
    input = int.parse(stdin.readLineSync()!);

    switch (input) {
      case 1:
        // Create authors
        Author author1 =
            Author(name: 'author A1 ', email: 'authora1@hotmail.com');
        Author author2 =
            Author(name: 'author A2', email: 'authora2@hotmail.com');
        Author author3 =
            Author(name: 'author A3', email: 'authora3@hotmail.com');
        // Print author ID
        print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");

        print('Author IDs:');
        print('${bluePen('Author 1 ID:')} ${magentapen(author1.id)}');
        print('${bluePen('Author 2 ID:')} ${magentapen(author2.id)}');
        print('${bluePen('Author 3 ID:')} ${magentapen(author3.id)}');

        print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");

        break;
      case 2:
        // Create books
        Book book1 = Book(
            name: 'book 1',
            isbn: '453-567',
            editionNumber: 1,
            author: Author(name: 'author A1 ', email: 'authora1@hotmail.com'));
        Book book2 = Book(
            name: 'book 2',
            isbn: '978-050',
            editionNumber: 2,
            author: Author(name: 'author A2', email: 'authora2@hotmail.com'));
        Book book3 = Book(
            name: 'book 3',
            isbn: '978-034',
            editionNumber: 3,
            author: Author(name: 'author A3', email: 'authora3@hotmail.com'));
        // Create a customer and add books

        Customer customer1 =
            Customer(name: 'Nouf', email: 'Nooof-2017a@hotmail.com');
        Customer customer2 =
            Customer(name: 'ali', email: 'aliaaa7a@hotmail.com');
        Customer customer3 =
            Customer(name: 'ahmed', email: 'ahmeddda@hotmail.com');
        print(
            blackPen(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"));

        customer1.addBook(book1);
        customer2.addBook(book2);
        customer3.addBook(book3);
        // Print customers information and their book list
        customer1.printInformation();
        customer2.printInformation();
        customer3.printInformation();

        print(
            blackPen(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"));

        break;

      default:
        print(yalowPen('Invalid choice. Please enter a number  1 ar 2.'));
        print(
            blackPen(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"));
    }
    //FormatException
  } on FormatException {
    print(yalowPen("......FormatException invalid Enttered......"));
    print(blackPen(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"));
  }
}
