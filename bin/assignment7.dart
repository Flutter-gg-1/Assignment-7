import 'exercise1.dart';
import 'exercise2.dart';
void main() {
  //create Circle objects
  Circle c1=Circle(5); 
  Circle c2=Circle.noAttribute();

  c1.getArea(); // output is "circle area is: 78.53981633974483"
  c1.getPerimeter(); // output is "circle perimeter is: 31.41592653589793"
  print(c2.radius); // output is 2.0

  Rectangle r1 =Rectangle(3, 5);
  r1.getArea(); // output is "Rectangle area is: 15.0"
  r1 =Rectangle(6, 5);
  r1.getPerimeter(); // output is Rectangle perimeter is: 22.0


  Author author1 =Author("Mohammed", "moh@gmail.com");
  print("id for auther 1: ${Author.id}"); //2
  Author author2 =Author("Abdula", "abdo123@gmail.com"); 
  print("id for auther 2: ${Author.id}"); //3
  Author author3 =Author("Hala", "HHala@gmail.com");
  print("id for auther 3: ${Author.id}"); //4

  Book book1 = Book(author1, 123, "1", "Children Fairytale");
  Book book2 = Book(author2, 456, "2", "Vegan Recipes");
  Book book3 = Book(author3, 789, "3", "Rocks type");
  
  Customer customer1 =Customer("Jana", "Jiji123@icloud.com");
  customer1.addBook(book1);
  customer1.addBook(book2);
  customer1.printInformation();

}
