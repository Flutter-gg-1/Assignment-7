import 'exercise1.dart';
import 'exercise2.dart';
void main(List<String> arguments) {
 // exercise 1
 Circle c1 = Circle();
 Circle c2 = Circle.noAttribute();

 c1.setRadius = 5;

 c1.getArea();

 c1.getPerimeter();

 print(c2.getRadius); //radius = 2

 Rectangle r1 = Rectangle();

 r1.setLength = 3;
 r1.setWidth = 5;

 r1.getArea();

 r1.setWidth = 8;

 r1.getPerimeter(); //result = 22

 // exercise 2
 Author author1 = Author(name: 'Gazi alqusybi', email: 'gazy123@gmail.com');
 Author author2 = Author(name: 'Basel Alalawi', email: 'B-75@gmail.com');
 Author author3 = Author(name: 'Richard Neckson', email: 'rine123@gmail.com');

 Book book1 = Book(name: 'Life in mangment', ISBN: '218937183', 
    editionNumber: 18, author: author1);
 Book book2 = Book(name: 'Point of life', ISBN: '218557183', 
    editionNumber: 1, author: author2);
 Book book3 = Book(name: 'My failure', ISBN: '218868183', 
    editionNumber: 7, author: author3);

 print('\n\nID for ${author1.name} : ${author1.id}');//id = 1
 print('ID for ${author2.name} : ${author2.id}');//id = 2
 print('ID for ${author3.name} : ${author3.id}');//id = 3

 Customer customer1 = Customer(name: 'Basel', email: 'basel-123@gmail.com');
 Customer customer2 = Customer(name: 'Ahmed', email: 'ahmed-123@gmail.com');
 Customer customer3 = Customer(name: 'Salem', email: 'salem-123@gmail.com');

 customer1.addBook(book1);
 customer2.addBook(book2);
 customer3.addBook(book3);

 customer1.printInformation();
}
