import 'classEx2/author.dart';
import 'classEx2/book.dart';
import 'classEx2/customer.dart';

showExercise2() {
  Author author1 =
      Author(name: "Robert C. Martin", email: "tarooti14dev@gmail.com");
  Author author2 = Author(name: "Thomas H. Cormen", email: "trt99@gmail.com");
  Author author3 = Author(name: "Erich Gamma", email: "tshgsye21@gmail.com");

  Book book1 = Book(
      name: "Clean Code: A Handbook of Agile Software Craftsmanship",
      bookISBN: "9780132350884",
      bookEdition: 2022,
      author: author1);
  Book book2 = Book(
      name: "Introduction to the Algorithms",
      bookISBN: "9421471871",
      bookEdition: 2019,
      author: author2);

  Book book3 = Book(
      name: "Design Patterns: Elements of Reusable Object-Oriented Software",
      bookISBN: "92478921462",
      bookEdition: 2021,
      author: author3);

  Customer customer1 = Customer(
      name: "Ali Altarouty", email: "tarooti14@gmail.com", phone: "0597555447");

  customer1.addBook(book1);
  customer1.addBook(book2);
  customer1.addBook(book3);
  customer1.printInformation(aotherList);
}
