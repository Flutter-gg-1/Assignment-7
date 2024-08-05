import '../exercise1/rectangle.dart';
import '../exercise1/circle.dart';
import '../ui/calculater.dart';

import '../exercise2/author.dart';
import '../exercise2/book.dart';
import '../exercise2/customer.dart';

void main(List<String> arguments) {
  exercise1();
  //UI
  uiExercise1();

  exercise2();
}

void exercise1() {
  //Excercise 1
  print("* " * 12);
  print("Welcom to my calculator");
  print("* " * 12);
  print("*****Circle*****");
  Circle c1 = Circle(radius: 5);
  Circle c2 = Circle.noAttribute();
  c1.getArea();
  c1.getPermiter();

  print("The Radius of c2 is ${c2.getRadius}");

  print("*****Rectangle *****");

  Rectangle r1 = Rectangle(length: 3, width: 5);

  r1.getArea();
  r1.getPermiter();

  print("chage length to 6");
  r1.setLength = 6;
  r1.getPermiter();

  //end of Excercise 1
}

void exercise2() {
  Author auther1 = Author(name: "M", email: "example@email.com");
  Author auther2 = Author(name: "O", email: "example@email.com");
  Author auther3 = Author(name: "K", email: "example@email.com");

  Book book1 =
      Book(name: "name", isbn: "isbn", editionNo: "editionNO", auther: auther1);

  Book book2 =
      Book(name: "name", isbn: "isbn", editionNo: "editionNO", auther: auther2);

  Book book3 =
      Book(name: "name", isbn: "isbn", editionNo: "editionNO", auther: auther3);

  late List<Book> bookList = [];
  Customer customer =
      Customer(name: "Mahdi", email: "example@email.com", bookList: bookList);

  customer.addBook(book1);
  customer.addBook(book2);
  customer.addBook(book3);
  customer.printInformation();
}
