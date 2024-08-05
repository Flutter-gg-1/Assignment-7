import 'exercise2.dart';
import 'book.dart';

class Customer extends Person {
  List<Book> bookCus = [];
  Customer({required super.name, required super.email});

  addBook(Book book) {
    bookCus.add(book);
  }

  printInformation() {
    Customer(name: name, email: email);
    for (var element in bookCus) {
      print(element);
    }
  }
}
