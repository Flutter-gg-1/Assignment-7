// Person Class:

// Create a class called Person with the following attributes:
// name
// email

class Person {
  String? name;
  String? email;

  Person(this.name, this.email);
}

// Author Class:
// Create a class Author that extends Person.
// Define a constructor.
// Add an integer variable id that starts from 1 and increments automatically with each new object created.
class Author extends Person {
  static int counter = 1;
  int id;
  Author(String name, String email)
      : id = counter++,
        super(name, email);

  @override
  String toString() {
    return 'Author(id: $id, name: $name, email: $email)';
  }
}

// Book Class:

// Create a class Book with the following attributes:
// name
// ISBN (International Standard Book Number) as a string
// edition number
// author (an object of the Author class)
class Book {
  String? name;
  String? isbn;
  int? edition;
  Author author;
  Book(this.name, this.isbn, this.edition, this.author);
  // Author author = Author();

  @override
  String toString() {
    return 'Book(name: $name, ISBN: $isbn, edition: $edition, author: ${author.name})';
  }
}

// Customer Class:
// Create a class Customer that extends Person.
// Define a constructor.
// Add a list called bookList (of type Book) to store purchased books.
// Define two methods:
// addBook(Book book): to add a new book to the list.
// printInformation(): to print:
// Customer information.
// Information about each book in the list, including the author.
class Customer extends Person {
  List<Book> bookList = [];
  Customer(String name, String email) : super(name, email);

  addBook(Book book) {
    bookList.add(book);
  }

  printInformation() {
    print("Customer name: $name email: $email");
    for (var element in bookList) {
      print(element);
    }
  }
}
