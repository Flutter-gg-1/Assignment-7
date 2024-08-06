import 'all_file.dart';

void exercise2() {
  print('\n ________####### Exercise 2 #######________\n');
  Author author1 = Author(name: 'Abdullah', email: 'email');
  Author author2 = Author(name: 'Abdullah', email: 'email');
  Author author3 = Author(name: 'Abdullah', email: 'email');
  print(Author.id);
  Book book1 =
      Book(name: 'book1', iISBN: '123', editionNumber: 1, author: author1);
  Customer customer1 = Customer(name: 'customer1', email: 'email');
  customer1.addBook(book1);
  customer1.printCustomerInformation();
  showPrompt();
}
