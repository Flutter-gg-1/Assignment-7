import 'book.dart';
import 'person.dart';

class Customer extends Person {
  late List<Book> bookList;
  Customer({required super.name, required super.email, required bookList}) {
    this.bookList = [];
  }
  addBook(Book book) {
    this.bookList.add(book);
    print("add was success");
  }

  printInformation() {
    print("_" * 20);
    print("******Customer Information******");
    print("$name\n$email");

    print("\n******Rented books******");
    for (var book in bookList) {
      book.bookInfo();
      book.auther.autherInfo();
    }
  }
}
