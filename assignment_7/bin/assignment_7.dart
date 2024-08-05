import 'excercise1.dart';
import 'excercise2.dart';

void main() {
  // MARK: - Excercise 1

  print('\n---------- Start Ex1 -----------\n');

  var c1 = Circle(radius: 5);
  var c2 = Circle.noAttribute();

  c1.getArea();
  c1.getPerimeter();

  print('c2 radius ${c2.getRadius}');

  var r1 = Rectangle(length: 3, width: 5);
  r1.getArea();

  r1.setLength = 6;

  r1.getPerimeter();

  print('\n----------- End Ex1 ------------\n');

  // MARK: - Excercise 2

  print('\n---------- Start Ex2 -----------\n');

  var author1 = Author(name: 'a1', email: 'a1@example.com');
  var author2 = Author(name: 'a2', email: 'a2@example.com');
  var author3 = Author(name: 'a3', email: 'a3@example.com');

  var book1 = Book('b1', '991234124', 25, author1);
  var book2 = Book('b2', '999834892', 46, author2);
  var book3 = Book('b3', '993413241', 12, author3);

  print(
      'author1 id: ${author1.id}, author2 id: ${author2.id}, author3 id: ${author3.id}');

  var customer1 = Customer(name: 'John', email: 'john@example.com');
  customer1.addBook(book1);
  customer1.addBook(book2);
  customer1.addBook(book3);
  customer1.printInformation();

  print('\n----------- End Ex2 ------------\n');

  // MARK: - Excercise 3

  print('\n---------- Start Ex3 -----------\n');
  // new function added in the 'Book' class 'verifyISBN'. Executed in the constructor
  /// Next line will catch the error
  var _ = Book('b4', 'AB1234124', 100, author1);

  print('\n----------- End Ex3 ------------\n');
}
