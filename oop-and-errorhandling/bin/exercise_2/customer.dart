import 'exercise2.dart';
import 'book.dart';

class Customer extends Person {
  List<Book> listOfBooks = [];

  Customer({required super.name, required super.email});

  addBook(Book book) {
    listOfBooks.add(book);
  }

  printInformation() {
    print('\nCustomer Name: $name');
    print('Customer Email: $email');

    for (var book in listOfBooks) {
      print('\nBook Name: ${book.name}');
      print('Book ISBN: ${book.isbn}');
      print('Book Edition Number: ${book.editionNumber}');
      print('Author Name: ${book.author.name}');
      print('Author Email: ${book.author.email}');
    }
  }
}
