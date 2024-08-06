import 'package:assignment_7/exercise2/author.dart';
import 'package:assignment_7/exercise2/book.dart';
import 'package:assignment_7/exercise2/customer.dart';

class Exercise2 {
  static void main() {
    /*
    *
    * Author Section
    *
    * */
    var author1 = Author('Fahad', 'fahad@alharbi.com');
    var author2 = Author('Sema', 'sema@alharbi.com');
    var author3 = Author('Amer', 'Amer@gmaill.com');

    /*
    *
    * Book Section
    *
    * */
    var book1 = Book('Dart Language As a Full Stack', '123-4567890123', 1, author1);
    var book2 = Book('Awesome Flutter Design ', '456-7890123456', 1, author2);
    var book3 = Book('Flutter As Senior', '789-0123456789', 1, author3);

    // Printing author IDs
    print('Author1 ID: ${author1.id}');
    print('Author2 ID: ${author2.id}');
    print('Author3 ID: ${author3.id}');

    /*
    *
    * Customer Section
    *
    * */
    var customer1 = Customer('Muhanned', 'muhanned@test.com');

    // Adding books to customer
    customer1.addBook(book1);
    customer1.addBook(book2);
    customer1.addBook(book3);

    // Printing customer information
    customer1.printInformation();
  }
}