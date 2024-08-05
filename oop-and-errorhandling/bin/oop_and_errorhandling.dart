import './exercise_1/circle.dart';
import './exercise_1/rectangle.dart';
import './exercise_2/author.dart';
import './exercise_2/book.dart';
import './exercise_2/customer.dart';

void main(List<String> arguments) {
  //Exercise 1
  Circle c1 = Circle(radius: 5);
  Circle c2 = Circle.noAttribute();

  c1.getArea();
  c1.getPerimeter();
  print('Radius of c2: ${c2.getRadius}');

  Rectangle r1 = Rectangle(length: 3, width: 5);
  r1.getArea();

  // To make Perimeter = 22
  r1.setLength = 6;
  r1.getPerimeter();

  //------------------------------------------------------------------------------------//

  //Exercise 2
  Author author1 =
      Author(name: 'Eric Windmill', email: 'ericwindmill@windmill.com');
  print('Authod ID: ${author1.getId()}');
  Author author2 = Author(name: 'Barry Burd', email: 'barryburd@burd.com');
  print('Authod ID: ${author2.getId()}');
  Author author3 = Author(
      name: 'Simone Alessandria', email: 'simonealessandria@alessandria.com');
  print('Authod ID: ${author3.getId()}');

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

  Customer customer1 =
      Customer(name: 'Abdulaziz', email: 'abdulaziz@gmail.com');
  customer1.addBook(book1);
  customer1.addBook(book2);
  customer1.addBook(book3);

  customer1.printInformation();
  print('');
}
