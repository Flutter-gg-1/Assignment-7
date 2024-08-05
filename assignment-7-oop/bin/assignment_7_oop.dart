import 'exercise1.dart';
import 'exercise2.dart';

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

  Customer customer = Customer(name: "turki", email: "turki@gmail.com");
  customer.addBook(book1);
  customer.addBook(book2);
  customer.printInformation();
  print("-------end of Exercise 2-------");
}
