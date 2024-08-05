
<p align="center">
<img src="./assets/logo-h-white.png" alt="Tuwaiq" width="400"/>
<br/>
<span style="font-size:30px">object-oriented programming practice</span>
</p>

<p align="center">
<a href="https://tuwaiq.edu.sa/"><img src="https://img.shields.io/badge/website-000000?style=for-the-badge&logo=About.me&logoColor=white" 
</p>
<hr/>

# Assignment 7

**Exercise 1**
## Objective:
In this exercise, i work with object-oriented programming concepts by creating classes and using error handling

## Instructions:
### 1.	Abstract Class:
In this class i create an abstract class called shape with two methods
- void getArea();
- void getPerimeter();

### Circle class
The circle class extended from the shape with also two methods
- getArea()
to calculate the area of circle using radius and pi
- getPerimeter()
to calculate the perimeter of circle using radius and pi

### Rectangle Class:
The Rectangle class extended from the shape with also two methods
- getArea()
to calculate the area of rectangle using length and width
- getPerimeter()
to calculate the perimeter of rectangle using length and width

**Exercise 2**
## Objective:
In this exercise, i continue working with object-oriented programming by creating classes related to books and customers. 

### Person Class:
I Created a class called Person with the following attributes:
- name
- email

### Author Class:
class Author extends Person.
Add an integer variable id that starts from 1 and increments automatically with each new object created.

### Book Class:
class Book have the following attributes:
- name
- ISBN (International Standard Book Number) as a string
- edition number
- author (an object of the Author class)

### Customer Class:
class Customer that extends Person.
Add a list called bookList to store purchased books.
methods:
- addBook(Book book): to add a new book to the list.
- printInformation(): to print:
- Customer information.
