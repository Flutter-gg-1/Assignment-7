
import 'person.dart';

void main() {
  // Create Author objects
  Author author1 = Author('Rawan', 'rawan@hotmail.com');
  Author author2 = Author('Mohammed', 'mohamed@gmail.com');
  Author author3 = Author('Riyad', 'riyad@gmail.com');

  // Print author IDs
  print('Author1 ID: ${author1.id}');
  print('Author2 ID: ${author2.id}');
  print('Author3 ID: ${author3.id}');

  // Create Book objects
  Book book1 = Book('power of noe', 'B001', 1, author1);
  Book book2 = Book('secret', 'B002', 2, author2);
  Book book3 = Book('7 hats', 'B003', 1, author3);

  // Create Customer object
  Customer customer1 = Customer('Customer ', 'customer1@hotmail.com');

  // Add books to customer1's book list
  customer1.addBook(book1);
  customer1.addBook(book2);
  customer1.addBook(book3);

  // Print customer information
  customer1.printInformation();
}