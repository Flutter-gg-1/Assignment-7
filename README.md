![object_oriented_program_practice](https://github.com/user-attachments/assets/5346749b-3ce5-46f6-be29-d77fcf5ca97c)

# Assignment 7
### **Exercise 1**
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

### **Exercise 2**
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

### Output Screenshot 

#### test case 1: 
The normal output 

<img src="https://github.com/user-attachments/assets/372393ca-9ac5-46b3-8b45-86a71e36d405" width="350" height="300" />

#### test case 2:
when the user enter the name of the customer but not the email
as you can see an error message will apear to give feadback and won't complete the program

<img src="https://github.com/user-attachments/assets/4eb1ff27-771f-4e51-8f93-47577bab81e3" width="380" height="310" />

#### test case 3:
In this test case the user will enter the email of the customer but not the name 
the same error message will be printed and the program will not complete the execution

<img src="https://github.com/user-attachments/assets/45da1677-5ff8-4b2e-8657-116af6e4a6ce" width="350" height="300" />


#### test case 4:
The last test case the user tryied to not entered both the name and email 
the error message will be printed 

<img src="https://github.com/user-attachments/assets/2c5c5c86-5a06-4cfd-a779-dde722bfbcaa" width="350" height="300" />

## How To Use
To clone and run this application, you'll need [Git](https://git-scm.com) and [Visual Studio Code] 

```bash
# Clone this repository
$ git clone https: url

# Go into the repository
$ cd repo-name

# Open project in vs
$ code .

# Run the project 
$ dart run
```

## Contributing
#### I would be happy to have your ideas to improving the project. Please feel free to do so.
```bash
# Fork the project

# Create your feature branch
$ git checkout -b branch-name

# Commit your changes
$ git commit -m 'Add some commit'

# Push to the branch
$ git push

# Open a Pull Request

```

Thank you for your reading ❤️






