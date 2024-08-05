import 'package:assignment7/exercise1.dart';
import 'package:assignment7/exercise2.dart';
import 'dart:io';

void main() {
  // Exercise 1 :
  Circle c1 = Circle(5); // Create new circle with radius of 5
  Circle c2 = Circle.noAttribute(); // Create new circle with radius of 2

  c1.getArea(); // Get area of circle object 1
  c1.getPerimeter();// Get area of circle object 2

  print(c2.radius);

  Rectangle r1 = Rectangle(3, 5);
  r1.getArea(); // Print area
  r1.setLength(22); // Set length of rectangle to 22
  r1.getPerimeter(); // Print permiter
  // --------------------------------

  // Exercise 2 :
  Author author1 = Author("Abdulaziz", "azooz.n40@hotmail.com"); // Author 1 info
  Author author2 = Author("Saleh", "Saleh@gmail.com"); // Author 2 info
  Author author3 = Author("Anas", "Saleh@gmail.com"); // Author 3 info

  stdout.write("Enter Book name: ");
  String? inputBook = stdin.readLineSync()!;
  stdout.write("Enter ISBN: "); // ISBN(International Standard Book Number)
  String? userISBN = stdin.readLineSync()!;
  int number = 0;
  try { // If user enter non numeric number, it catch the error type and print it
    number = int.parse(userISBN);
  } catch (e) {
    print(e);
  }
  Book book1 = Book( // This book generated via the user
      ISBN: number, author: author1, editionNumber: "V.1", name: inputBook);

  Book book2 = Book(ISBN: 1,author: author2,editionNumber: "V2",name: "Rashed");
  Book book3 = Book(ISBN: 4,author: author3,editionNumber: "V3",name: "Mona");

  print(author1.id); // Print ID of Author 1
  print(author2.id); // Print ID of Author 2
  print(author3.id); // Print ID of Author 3

  Customer customer1 = Customer("Yasser", "Yasser@gmail.com"); // Create new Costumer 

  customer1.addBook(book1); // Add books to the costumer
  customer1.addBook(book2);
  customer1.addBook(book3);

  customer1.printInformation(); // Print all the books the costumer purchased
}
