class Person {
  String? name;
  String? email;

  Person(this.name, this.email);
}

class Author extends Person {
  static int counter = 1;
  int id;
  Author(String super.name, String super.email)
      : id = counter++;
        

  @override
  String toString() {
    return "Author(id: $id, name: $name, email: $email";
  }
}

// Book Class:
class Book {
  String? name;
  String? isbn;
  int? edition;
  Author author;
  Book(this.name, this.isbn, this.edition, this.author);
  // Author author = Author();

  @override
  String toString() {
    return "Book name: $name, ISBN: $isbn, edition: $edition, author: ${author.name}";
  }
}

// Customer Class:
class Customer extends Person {
  List<Book> bookList = [];
  Customer(String super.name, String super.email);

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
