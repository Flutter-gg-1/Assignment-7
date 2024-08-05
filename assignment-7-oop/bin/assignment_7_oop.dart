import 'exercise1.dart';
import 'exercise2.dart';
import 'dart:io';

void main(List<String> arguments) {
  print("\n\n\n----------Exercise 1----------");
  Circle c1 = Circle(5);
  Circle c2 = Circle.noAttribute();

  c1.getArea();
  c1.getPerimeter();
  print(c2.getRadius);

  Rectangle r1 = Rectangle(length: 3.0, width: 5.0);
  r1.getArea();
  r1.setLength = 6.0;
  r1.getPerimeter();

  print("\n\n---now you can test it your self");
  bool exit = false;
  do {
    print(
        "\n\n----------Choose by number----------\n1-circle area \n2-circle perimeter\n3-rectangle area \n4-rectangle perimeter\n5-exit");
    print("------------------------------------");
    int input;
    try {
      input = int.parse(stdin.readLineSync()!);
    } catch (ex) {
      print("you should enter a number from 1-5");
      continue;
    }
    switch (input) {
      case 1:
        print("enter the new radius: ");
        try {
          double radius = double.parse(stdin.readLineSync()!);
          c1.setRadius = radius;
        } catch (ex) {
          print("\n---------------Error----------------");
          print("you should enter a double value");
          print("------------------------------------");
          continue;
        }
        c1.getArea();
        break;
      case 2:
        print("enter the new radius: ");
        try {
          double radius = double.parse(stdin.readLineSync()!);
          c1.setRadius = radius;
        } catch (ex) {
          print("\n---------------Error----------------");
          print("you should enter a double value");
          print("------------------------------------");
          continue;
        }
        c1.getPerimeter();
        break;
      case 3:
        print("enter the new length: ");
        double? length;
        try {
          length = double.parse(stdin.readLineSync()!);
          r1.setLength = length;
        } catch (ex) {
          print("\n---------------Error----------------");
          print("you should enter a double value");
          print("------------------------------------");
          continue;
        }
        print("enter the new width: ");

        double? width;
        try {
          width = double.parse(stdin.readLineSync()!);
          r1.setWidth = width;
        } catch (ex) {
          print("\n---------------Error----------------");
          print("you should enter a double value");
          print("------------------------------------");
          continue;
        }
        r1.getArea();
        break;
      case 4:
        print("enter the new length: ");
        double? length;
        try {
          length = double.parse(stdin.readLineSync()!);
          r1.setLength = length;
        } catch (ex) {
          print("\n---------------Error----------------");
          print("you should enter a double value");
          print("------------------------------------");
          continue;
        }
        print("enter the new width: ");

        double? width;
        try {
          width = double.parse(stdin.readLineSync()!);
          r1.setWidth = width;
        } catch (ex) {
          print("\n---------------Error----------------");
          print("you should enter a double value");
          print("------------------------------------");

          continue;
        }
        r1.getPerimeter();
        break;
      case 5:
        exit = true;
        break;
    }
  } while (!exit);

  print("-------end of Exercise 1-------");

  print("\n\n\n----------Exercise 2----------");
  Author author1 = Author(name: "Ahmed", email: "ahmed@gmail.com");
  Author author2 = Author(name: "Khalid", email: "Khalid@gmail.com");
  Author author3 = Author(name: "Mohammad", email: "Mohammad@gmail.com");

  Book book1 = Book(
      name: "Dart basics", isbn: "375216", editionNumber: 3, author: author1);
  Book book2 = Book(
      name: "OOP basics", isbn: "484913", editionNumber: 2, author: author2);
  Book book3 = Book(
      name: "Data science mastery",
      isbn: "435153",
      editionNumber: 4,
      author: author3);
  print("author1 id: ${author1.id}");
  print("author2 id: ${author2.id}");
  print("author3 id: ${author3.id}");

  Customer customer1 = Customer(name: "turki", email: "turki@gmail.com");
  customer1.addBook(book1);
  customer1.addBook(book2);
  customer1.printInformation();

  Customer customer2 = Customer(name: "fahad", email: "fahad@gmail.com");
  customer2.addBook(book1);
  customer2.addBook(book3);
  customer2.printInformation();
  print("-------end of Exercise 2-------");
}
