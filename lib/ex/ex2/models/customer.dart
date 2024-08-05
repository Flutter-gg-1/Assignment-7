import 'package:asg7/ex/ex2/models/book.dart';
import 'package:asg7/ex/ex2/models/person.dart';

class Customer extends Person {
  Customer({required super.name, required super.email});

  List<Book> bookLis = [];

  void addBook(Book book) {
    bookLis.add(book);
  }

  void printInformation() {
    print("\n");
    print("#" * 35);
    print("Customer information :\nname --> $name\nemail --> $email");

    for (Book val in bookLis) {
      print(
          "Book Name --> ${val.name}\nBook isbn --> ${val.isbn}\nBook edition Number --> ${val.editionNumber}\n---------------"
          "\nBook Author name --> ${val.author.name}\nBook Author email --> ${val.author.email}");


          print("*"*26);
    }

    print("\n");
    print("#" * 35);
  }
}
