import 'person.dart';
import 'book.dart';

class Customer extends Person {
  String? phone;
  Customer({required super.name, required super.email, required this.phone});

  List<Book> bookList = [];

  void addBook(Book book) {
    bookList.add(book);
  }

  void printInformation() {
    print("-------Your information---------");
    print(
        "Customer name : $name\nCustomer Email : $email\nCustomer phone : $phone");
    for (var element in bookList) {
      print("Book:${element.name}");
    }
    print("--------------End---------------");
  }
}
