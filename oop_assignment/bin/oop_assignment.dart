import 'dart:io';

import 'exercise1.dart';
import 'exercise2.dart';

void main(List<String> arguments) {
  //------------------------Exercise 1--------------------------

//Create 2 objects of the Circle class named c1 and c2
  Circle c1 = Circle(radius: 5);
  Circle c2 = Circle.noAttribute();

//Create an object of the Rectangle class named r1.
  Rectangle r1 = Rectangle(length: 3, width: 5);

//Execute getArea() and getPerimeter() using c1.
  c1.getArea();
  c1.getPerimeter();

//Print the radius of c2.
  print("\n c2 radius ${c2.getRadius}");

//Execute getArea() using r1
  r1.getArea();

//Modify the length or to make the perimeter equal to 22.Execute getPerimeter() using r1.
  r1.changeLength = 6;
  r1.getPerimeter();

//------------------------Exercise 2--------------------------

  //Create 3 objects of type Author named author1, author2, and author3.
  Author author1 = Author(name: "Gourge rr", email: "gourge@gmail.com");
  Author author2 = Author(name: "Ahmad", email: "Ahmad@gmail.com");
  Author author3 = Author(name: "Mohammed", email: "Mohammed@gmail.com");

  //Create 3 objects of type Book named book1, book2, and book3.
  Book book1 = Book(name: "throns", isbn: "1438", edition: 1, author: author1);
  Book book2 =
      Book(name: "Abuot life", isbn: "9473", edition: 2, author: author2);
  Book book3 = Book(
      name: "programming basics", isbn: "3287", edition: 1, author: author3);

//Print the id for each author
  print("Author 1 ID: ${author1.id}");
  print("Author 2 ID: ${author2.id}");
  print("Author 3 ID: ${author3.id}");

  //Create at least one object of type Customer named customer1.
  print("Add cutomer name:");
  Customer customer1 = Customer(name: "Rahaf", email: "Rahaf@gmail.com");

//Add books to customer list
  customer1.addBook(book1);
  customer1.addBook(book2);
  customer1.addBook(book3);

//Display all info
  customer1.printInformation();

//------------------------Try error handling--------------------------

//let the user insert the book info

  print("Enter book name");
  String name = stdin.readLineSync()!;

  print("Enter book ISBN");
  String isbn = stdin.readLineSync()!;

  print("Enter book edition");

  int edition;
  try {
    edition = int.parse(stdin.readLineSync()!);
  } catch (e) {
    edition = 0;
  }

  Book userBook = Book(name: name, isbn: isbn, edition: edition);
  print(userBook.edition);
}
