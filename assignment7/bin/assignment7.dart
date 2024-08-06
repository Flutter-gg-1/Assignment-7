import 'dart:io';
import "exercise1.dart";
import 'exercise2.dart';

void main(List<String> arguments) {
  Circle c1 = Circle(5);
  Circle c2 = Circle.noAttribute();

  c1.getArea();
  c1.getPerimeter();
  print("Radius of c2 is ${c2.getRadius}");

  Rectangle r1 = Rectangle(3, 5);
  r1.getArea();
  r1.updateLength = 6;
  r1.getPerimeter();
  print("\n----------------------------------\n");
  Author author1 =
      Author(name: "Walt Disney", email: "waltDisney@gmail.com", id: 555);
  Author author2 =
      Author(name: "J.E. Bright", email: "bright@gmail.com", id: 444);
  Author author3 =
      Author(name: "Disney Books", email: "disneyBooks@gmail.com", id: 222);

  Book book1 = Book(
      name: "Aladdin and the Magic Lamp",
      aditionNumber: 1,
      isbn: "978-0786841675",
      author: author1);
  Book book2 = Book(
      name: "Frozen",
      aditionNumber: 1,
      isbn: "978-1484710697",
      author: author2);
  Book book3 = Book(
      name: "Moana", aditionNumber: 1, isbn: "978-1368000434", author: author3);

  print("Author1 ID: ${author1.id}");
  print("Author2 ID: ${author2.id}");
  print("Author3 ID: ${author3.id}");

  Customer customer1 = Customer(name: "amjad", email: "amjad@gmail.com");
  customer1.addBook(book1);
  customer1.addBook(book2);
  customer1.addBook(book3);
  customer1.printInformation();

  print("________________________________________");
  print("____________user input__________________");
  print("\n____________Circle__________________");
  print("\nEnter radius: ");
  double input;
  try {
    input = double.parse(stdin.readLineSync()!);
    Circle c3 = Circle(input);
    c3.getArea();
    c3.getPerimeter();
  } catch (e) {
    print("$e is not a number");
  }
  print("\n____________Rectangle__________________");
  try{
  print("\nEnter length: ");
  double length = double.parse(stdin.readLineSync()!);
  print("\nEnter width: ");
  double width = double.parse(stdin.readLineSync()!);
    Rectangle r2 = Rectangle(length, width);
  r2.getArea();
  r2.getPerimeter();
  print("\n----------------------------------\n");
  } catch (e) {
    print("$e is not a number");
}
}