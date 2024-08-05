import 'exercise1.dart';
import 'exercise2.dart';
void main() {
  Circle c1=Circle(5);
  Circle c2=Circle.noAttribute();
  c1.getArea();
  c1.getPerimeter();
  print(c2.radius);

  Rectangle r1 =Rectangle(3, 5);
  r1.getArea();
  r1 =Rectangle(6, 5);
  r1.getPerimeter();

  Author author1 =Author("Mohammed", "moh@gmail.com");
  print("id for auther 1: ${Author.id}");
  Author author2 =Author("Abdula", "abdo123@gmail.com"); 
  print("id for auther 2: ${Author.id}");
  Author author3 =Author("Hala", "HHala@gmail.com");
  print("id for auther 3: ${Author.id}");

  Book book1 = Book(author1, 123, "1", "Children Fairytale");
  Book book2 = Book(author2, 456, "2", "Vegan Recipes");
  Book book3 = Book(author3, 789, "3", "Rocks type");

  
  Customer customer1 =Customer("Jana", "Jiji123@icloud.com");
  customer1.addBook(book1);
  customer1.addBook(book2);
  customer1.printInformation();

}
