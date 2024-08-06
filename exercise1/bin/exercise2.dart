import 'all_file.dart';

void exercise2() {
  print('\n ________####### Exercise 2 #######________\n');
  Author author1 = Author(name: '1. Abdullah', email: 'email');
  Author author2 = Author(name: '2. Mukhlef', email: 'email');
  Author author3 = Author(name: '3. AL-Shammari', email: 'email');
  print('Number of authors are: ${Author.id}');
  print('Authors are: ${author1.name}, ${author2.name}, ${author3.name}');
  print('');
  Book book1 =
      Book(name: 'book1', iISBN: '123', editionNumber: 1, author: author1);
  Customer customer1 = Customer(name: 'Abu_Mukhlef', email: 'Abu_Mukhlef@hotmail.com');
  customer1.addBook(book1);
  customer1.printCustomerInformation();
  showPrompt();
}
