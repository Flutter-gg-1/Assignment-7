import 'dart:io';
import './exercise_1/circle.dart';
import './exercise_1/rectangle.dart';
import './exercise_2/author.dart';
import './exercise_2/book.dart';
import './exercise_2/customer.dart';

menu() async {
  bool isExit = false;
  do {
    stdout.write('\nPlease choose a service: ');
    print('\n1- 3D printing of Shapes');
    print('2- Online books shopping');
    print('0- Exit');
    stdout.write('\n Enter your choice: ');
    int? choice;
    try {
      choice = int.parse(stdin.readLineSync()!);
    } catch (e) {
      print('Invalid Choice');
    }
    switch (choice) {
      case 1:
        print('\n1- Circle shape');
        print('2- Rectangle shape');
        stdout.write('\nEnter your choice: ');
        try {
          choice = int.parse(stdin.readLineSync()!);
        } catch (e) {
          print('Invalid input');
        }

        switch (choice) {
          case 1:
            await createCircleShape();
          case 2:
            await createRectangleShape();
        }
      case 2:
        bookStore();
      case 0:
        isExit = true;
        break;
      default:
        print('Invalid Input!!');
    }
  } while (!isExit);
}

createCircleShape() {
  stdout.write('\nPlease Enter radius of Circle: ');
  double radius;
  try {
    radius = double.parse(stdin.readLineSync()!);
  } catch (e) {
    print('Radius should be a number!!');
    return;
  }

  Circle coffeeMug = Circle(radius: radius);
  stdout.write('printing...');

  print('\nCircle Details:');
  coffeeMug.getArea();
  coffeeMug.getPerimeter();
  print('\nYour 3D printed Circle is ready to pick up!!');
}

createRectangleShape() {
  stdout.write('\nPlease Enter length of Rectangle: ');
  double length;
  try {
    length = double.parse(stdin.readLineSync()!);
  } catch (e) {
    print('Length should be a number!!');
    return;
  }
  stdout.write('\nPlease Enter width of Rectangle: ');
  double width;
  try {
    width = double.parse(stdin.readLineSync()!);
  } catch (e) {
    print('Width should be a number!!');
    return;
  }

  Rectangle coffeeMug = Rectangle(length: length, width: width);
  stdout.write('printing...');
  
  print('\nRectangle Details:');
  coffeeMug.getArea();
  coffeeMug.getPerimeter();
  print('\nYour 3D printed Rectangle is ready to pick up!!');
}

bookStore() {
  Author author1 =
      Author(name: 'Eric Windmill', email: 'ericwindmill@windmill.com');
 
  Author author2 = Author(name: 'Barry Burd', email: 'barryburd@burd.com');
  
  Author author3 = Author(
      name: 'Simone Alessandria', email: 'simonealessandria@alessandria.com');

  Book book1 = Book(
      name: 'Flutter in Action',
      isbn: '9781617296147',
      editionNumber: 1,
      author: author1);
  Book book2 = Book(
      name: 'Flutter For Dummies',
      isbn: '9781119612582',
      editionNumber: 1,
      author: author2);
  Book book3 = Book(
      name: 'Flutter Cookbook',
      isbn: '978-1803245430',
      editionNumber: 2,
      author: author3);

  stdout.write('Enter your name: ');
  String name = stdin.readLineSync()!;
  stdout.write('Enter your email: ');
  String email = stdin.readLineSync()!;

  Customer customer1 = Customer(name: name, email: email);

  print('\n Welcome ${customer1.name}');
  String choice;
  do {
    print('The available books are:');
    print('1- ${book1.name}');
    print('2- ${book2.name}');
    print('3- ${book3.name}');
    print('0- Exit');

    stdout.write('\n Choose a book to add to cart: ');
    choice = stdin.readLineSync()!;

    switch (choice) {
      case '1':
        customer1.addBook(book1);
      case '2':
        customer1.addBook(book2);
      case '3':
        customer1.addBook(book3);
      default:
    }
  } while (choice != '0');

  print(customer1.printInformation());
  print('Thank you for shopping with us!!');
}
