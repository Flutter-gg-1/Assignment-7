import 'dart:io';

import 'exercise1.dart';
import 'exercise2.dart';

void main(List<String> arguments) {
  //Object from Circle
  Circle c1 = Circle(radius: 5);
  Circle c2 = Circle.noAttribute();

  print("\n\n\n**************** Exercise 1 ********************\n");

  print("******************** Circle ********************\n");

  //Execute Circle methods
  c1.getArea();
  c1.getPerimeter();
  print("* Circle radius is ${c2.getRadius}");

  print("\n****************** Rectangle *******************\n");

  //Object from Rectangle
  Rectangle r1 = Rectangle(length: 3, width: 5);

  //Execute Rectangle method
  r1.getArea();

  //Modify width value to equal 22
  r1 = Rectangle(length: 3, width: 8);

  //Execute Rectangle method
  r1.getPerimeter();

  print("\n\n\n**************** Exercise 2 ********************\n");

  //create Author objects
  Author author1 = Author(name: "yara", email: "yara@gmail.com");
  Author author2 = Author(name: "Sara", email: "sara@gmail.com");
  Author author3 = Author(name: "rawan", email: "rawan@gmail.com");

  //print authors id
  print("************* Authors ID *****************\n");
  print("Author 1 ID is ${author1.id}");
  print("Author 2 ID is ${author2.id}");
  print("Author 3 ID is ${author3.id}");
  print("\n*******************************************\n");

  //book objects
  Book book1 =
      Book(name: "Dart", isbn: "456354433", editionNumber: 10, author: author2);
  Book book2 = Book(
      name: "Computer science",
      isbn: "48547837678",
      editionNumber: 1,
      author: author3);
  Book book3 = Book(
      name: "Flutter", isbn: "39483347737", editionNumber: 5, author: author1);

  //Customer objects
  Customer customer1 = Customer(name: "Mohammed", email: "mohammed@gmail.com");
  Customer customer2 = adtionalCustomer(customerNumber: 2);
  Customer customer3 = adtionalCustomer(customerNumber: 3);

  //add book to each customer
  customer1.addBook(book: book1);
  customer2.addBook(book: book1);
  customer2.addBook(book: book2);
  customer3.addBook(book: book3);

  //print customer information
  customer1.printInformation();
  customer2.printInformation();
  customer3.printInformation();
}

//function use error handling
adtionalCustomer({required int customerNumber}) {
  String? name;
  String? email;
  while (true) {
    try {
      print("Enter customer $customerNumber name that more than 2 letters:");
      name = stdin.readLineSync()!;
      if (name.length < 2) {
        throw FormatException("you must enter name that more than 2 letters");
      }

      print("Enter customer $customerNumber email: ");
      email = stdin.readLineSync()!;
      if (email.isEmpty || !email.contains('@')) {
        throw FormatException('Invalid email format.');
      }
      break;
    } catch (e) {
      print('Invalid input. Please enter a valid name and email.');
    }
  }
  return Customer(name: name, email: email);
}
