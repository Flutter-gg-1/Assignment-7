import 'dart:io';

import 'exercise1.dart';
import 'exercise2.dart';

void main() {
  Circle c1 = Circle(5);
  Circle c2 = Circle.noAttribute();

  c1.getArea();
  c1.getPerimeter();

  print("The radius of c2 is: ${c2.radius.toStringAsFixed(1)}\n");

  Rectangle r1 = Rectangle(3, 5);
  r1.getArea();
  r1.length = 4;
  r1.getArea();
  print("-------------------------------");

  Author author1 = Author("abdullah", "abdullah@gmail.com");
  Author author2 = Author("suad", "suad@gmail.com");
  Author author3 = Author("noor", "noor@gmail.com");

  Book book1 = Book("khalid", "2", 1, author1);
  Book book2 = Book("najwa", "443", 4, author2);
  Book book3 = Book("ahmed", "56", 6, author3);

  String? customerName;
  String? customerEmail;

  try {
    print("Please enter customer name: ");
    customerName = stdin.readLineSync();
    print("Please enter customer email: ");
    customerEmail = stdin.readLineSync();
  } catch (error) {
    print("opps there is an error");
  }

  Customer customer1 = Customer(customerName!, customerEmail!);


  customer1.addBook(book1);
  customer1.addBook(book2);
  customer1.addBook(book3);

  customer1.printInformation();
}
