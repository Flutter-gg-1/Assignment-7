import 'dart:math';

import 'circle.dart';
import 'rectangle.dart';
import 'book.dart';
import 'dart:io';
import 'author.dart';
import 'customer.dart';

void main(List<String> arguments) {
  Circle c1 = Circle(5); //here I will pass a value to the circle c1
  Circle c2 = Circle.noAttribute(); //here the value 2
  c1.getArea(); //mthod getting area by Multiply the pi in radius
  c1.getPerimeter(); //mthod getting area by 2  Multiply the pi in radius
  print("Radius of c2: ${c2.raduis}"); // here I print the value off c2.raduis
  Rectangle r1 = Rectangle(3, 5); //_length and _width
  r1.getArea(); //mthod getting area by Multiply the length and _width
  r1.width = 8; //setter
  r1.getPerimeter(); //method to calculate the perimeter by squer2 Multiply the length in width
  List count = []; //list to count the ID
//I took 3 objects from author class and I gave it vlaue then I used ID to gave every object Id then I print the ID using for loop the ID incremmnt when we use the constracter

  Author auther1 = Author(name: "Author 1", email: "1@gmail.com");
  count.add(Author.id);
  Author auther2 = Author(name: "Author 2", email: "2@hotmail.com");
  count.add(Author.id);
  Author auther3 = Author(name: "Author 3", email: "3@outlook.com");
  count.add(Author.id);
  for (var element in count) {
    print("Auther: ID$element"); //ID count
  }
  try {
    //eroor handilng to take input from the user for the book1 if he put a String in editionNumber it will be error and the error will print it
    print("please enter your name: ");
    String name = stdin.readLineSync()!;
    print("please enter your isbn: ");
    String isbn = stdin.readLineSync()!;
    print("please enter your editionNumber: ");
    int editionNumber = int.parse(stdin.readLineSync()!);
    Book book1 = Book(
        name: name, isbn: isbn, editionNumber: editionNumber, auther: auther1);
    Book book2 = Book(
        name: "Book Two", isbn: "23423434", editionNumber: 2, auther: auther2);
    Book book3 = Book(
        name: "Book Three", isbn: "234234", editionNumber: 3, auther: auther3);

    print(
        "please enter your name: "); //here I took the input from the user for Custmer name and Email
    String custmerName = stdin.readLineSync()!;
    print("please enter your Email: ");
    String email = stdin.readLineSync()!;
    Customer customer1 = Customer(name: custmerName, email: email);
    customer1.addBook(book1); //i used the method to added the book to custmer
    customer1.printInformation(); //then i used the method to print it
  } catch (e) {
    print(e);
  }
}
