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
  Author author1 = Author(name: "Walt Disney", email: "waltDisney@gmail.com", id: 555);
  Author author2 = Author(name: "J.E. Bright", email: "bright@gmail.com", id: 444);
  Author author3 = Author(name: "Disney Books", email: "disneyBooks@gmail.com", id: 222);

  Book book1 = Book(name: "Aladdin and the Magic Lamp", aditionNumber: 1, isbn: "978-0786841675", author: author1);
  Book book2 = Book(name: "Frozen", aditionNumber: 1, isbn: "978-1484710697", author: author2);
  Book book3 = Book(name: "Moana", aditionNumber: 1, isbn: "978-1368000434", author: author3);

  print("Author1 ID: ${author1.id}");
  print("Author2 ID: ${author2.id}");
  print("Author3 ID: ${author3.id}");

  Customer customer1 = Customer(name: "amjad", email: "amjad@gmail.com");
  customer1.addBook(book1);
  customer1.addBook(book2);
  customer1.addBook(book3);
  customer1.printInformation();
}
