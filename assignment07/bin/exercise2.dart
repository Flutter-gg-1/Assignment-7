import "color_print.dart";

// Define an abstract class named Person
abstract class Person {
  // Properties
  String? name, email;

  // Constructor
  Person({this.name, this.email});
}

// Define a class named Author that extends the Person class.
class Author extends Person {
  static int _idCounter = 1;
  int id;

  Author({super.name, super.email}) : id = _idCounter++;
}

// Define a class named Book
class Book {
  // Properties
  String? name, isbn;
  int? edition;
  Author? author;

  // Constructor
  Book({this.name, this.isbn, this.edition, this.author});
}

// Define a class named Customer that extends the Person class
class Customer extends Person {
  // Constructor
  Customer({super.name, super.email});

  // List of books
  List<Book> bookList = [];

  // Method to add a book to the bookList
  void addBook(Book book) {
    bookList.add(book);
  }

  // Method to display the bookList
  void displayBooks() {
    printInfo("Customer name: $name, email: $email");
    printInfo("Books purchased:");
    for (Book book in bookList) {
      printSuccess("Book name: ${book.name}");
      printSuccess("Book ISBN: ${book.isbn}");
      printSuccess("Book edition: ${book.edition}");
      printSuccess("Book author: ${book.author!.name}\n");
    }
  }
}

void exerciseTwo(List<dynamic> list) {
  printSuccess("Books and Customers\n");
  // Creating Author objects
  Author author1 = Author(name: "Author A", email: "authora@example.com");
  Author author2 = Author(name: "Author B", email: "authorb@example.com");
  Author author3 = Author(name: "Author C", email: "authorc@example.com");

  // Creating Book objects
  Book book1 =
      Book(name: "Book One", isbn: "123-456-789", edition: 1, author: author1);
  Book book2 =
      Book(name: "Book Two", isbn: "123-456-789", edition: 2, author: author2);
  Book book3 = Book(
      name: "Book Three", isbn: "123-456-789", edition: 3, author: author3);

  // Print author IDs
  printInfo("\nAuthor IDs:");
  printSuccess("Author A ID: ${author1.id}");
  printSuccess("Author B ID: ${author2.id}");
  printSuccess("Author C ID: ${author3.id}\n");

  // Creating Customer object
  Customer customer1 =
      Customer(name: "Customer One", email: "customer1@example.com");
  Customer customer2 =
      Customer(name: "Customer Two", email: "customer2@example.com");
  Customer customer3 =
      Customer(name: "Customer Three", email: "customer3@example.com");

  // Adding books to customer"s book list
  customer1.addBook(book1);
  customer2.addBook(book2);
  customer3.addBook(book3);

  // Printing customer information
  customer1.displayBooks();
  customer2.displayBooks();
  customer3.displayBooks();
}
