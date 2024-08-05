// Create 2 objects of the Circle class named c1 and c2:
// c1 with a radius of 5.
// c2 using the named constructor without a radius parameter.
// Execute getArea() using c1.
// Execute getPerimeter() using c1.
// Print the radius of c2.
// Create an object of the Rectangle class named r1 with a length of 3 and a width of 5.
// Execute getArea() using r1.
// Modify either the length or width (but not both) to make the perimeter equal to 22.
// Execute getPerimeter() using r1.

import 'exercise1.dart';
import 'exercise2.dart';

void main() {
  Circle c1 = Circle(5);
  Circle c2 = Circle.noAttribute();

  c1.getArea();
  c1.getPerimeter();

  print("The radius of c2 is: ${c2.radius}\n");

  Rectangle r1 = Rectangle(3, 5);
  r1.getArea();
  r1.length = 4;
  r1.getArea();
  print("-------------------------------");
// Create 3 objects of type Author named author1, author2, and author3.
// Create 3 objects of type Book named book1, book2, and book3.
// Print the id for each author; they should all be different.
// Create at least one object of type Customer named customer1.
// Add books to customer1's book list using the addBook() method.
// Print information about customer1 and their book list.

  Author author1 = Author("abdullah", "abdullah@gmail.com");
  Author author2 = Author("suad", "suad@gmail.com");
  Author author3 = Author("noor", "noor@gmail.com");

  Book book1 = Book("khalid", "2", 1, author1);
  Book book2 = Book("najwa", "443", 4, author2);
  Book book3 = Book("ahmed", "56", 6, author3);

  Customer customer1 = Customer("sara", "sara@customer.com");
  customer1.addBook(book1);
  customer1.addBook(book2);
  customer1.addBook(book3);

  customer1.printInformation();
}
