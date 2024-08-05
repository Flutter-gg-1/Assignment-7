// imports
import 'dart:io'; // library used to interact with user
import 'package:assignment7_oop/exercise1.dart'; // exercise 1 file
import 'package:assignment7_oop/exercise2.dart'; // exercise 2 file

void main() {
  print('====(> Exercise 1 <)====');
  Circle c1 = Circle(radius: 5);
  Circle c2 = Circle.noAttribute(); // using named constructor
  c1.getArea();
  c1.getPerimeter();
  print(c2.getRadius); // 2
  Rectangle r1 = Rectangle(length: 3, width: 5);
  r1.getArea();
  r1.setLength = 6;
  r1.getPerimeter(); // 22

  // error handling
  stdout.write("Enter radius : ");
  String? userRadius = stdin.readLineSync();
  try {
    c1.setRadius = int.parse(userRadius!);
  }
  on FormatException {
    print("ERROR : Non Numeric Values are Not Allowed");
  }
  catch (error) {
    print("ERROR : $error");
  }

  try {
    r1.setLength = 10 ~/ 0;
  }
  on UnsupportedError {
    print("ERROR : Division By Zero is Not Allowed.");
  }
  catch (error) {
    print("ERROR : $error");
  }

  print(c1.getRadius); // 5 if error, otherwise it is userRadius
  print(r1.getLength); // 6

  print('--'*20);

  print('====(> Exercise 2 <)====');
  Author author1 = Author(name: "Yaser", email: "Yaser@something.com");
  Author author2 = Author(name: "Fahad", email: "Fahad@email.com");
  Author author3 = Author(name: "Ali", email: "Ali@mail.sa");
  
  Book book1 = Book(name: "Life is good", ISBN: "11111", editionNumber: 2, author: author1);
  Book book2 = Book(name: "Dart Language", ISBN: "22222", editionNumber: 1, author: author2);
  Book book3 = Book(name: "Flutter Secrets", ISBN: "343434", editionNumber: 1, author: author3);
  
  List<Author> authors = [author1,author2,author3];
  for(var author in authors) {
    print("${author.name}'s ID is ${author.authorID}");
  }

  Customer customer1 = Customer(name: "Faisal", email: "Faisal@hello.com");
  customer1.addBook(book1);
  customer1.addBook(book2);
  customer1.addBook(book3);
  customer1.printInformation();
  
  print('////');
  
  Customer customer2 = Customer(name: "Salem", email: "Salem@example.com");
  customer2.printInformation();
  
  // error handling
  try {
    List<Book>? books;
    for(var b in books!) {
      customer2.addBook(b);
    }
  }
  catch (error) {
    print("ERROR : $error");
  }
  print("End of program !");
}