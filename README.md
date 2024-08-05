## Exercise 1

In this exercise, you will work with object-oriented programming concepts by creating classes and using error handling. Follow the instructions below to complete the exercise:

### Instructions:

1. **Create a Dart file named `exercise1.dart`**.

2. **Abstract Class**:
   - Create an abstract class called `Shape` with the following methods:
     - `void getArea();`
     - `void getPerimeter();`

3. **Circle Class**:
   - Create a class `Circle` that extends `Shape`.
   - Implement the methods from the abstract class.
   - Define a private variable for `radius`.
   - Define `PI` as a constant using the Math library.
   - Implement two constructors:
     - A parameterized constructor.
     - A named constructor called `noAttribute` that assigns `radius` a default value of 2.
   - In the `getArea()` method:
     - Define an `area` variable to store the result of the area calculation.
     - Print the area in the format: `"circle area is: $area"`.
   - In the `getPerimeter()` method:
     - Define a `perimeter` variable to store the result of the perimeter calculation.
     - Print the perimeter in the format: `"circle perimeter is: $perimeter"`.
   - Provide getter and setter methods for `radius`.

4. **Rectangle Class**:
   - Create a class `Rectangle` that extends `Shape`.
   - Implement the methods from the abstract class.
   - Define private variables for `length` and `width`.
   - Implement two constructors:
     - A parameterized constructor.
     - A named constructor called `noAttribute` that assigns `length` and `width` a default value of 3.
   - In the `getArea()` method:
     - Define an `area` variable to store the result of the area calculation.
     - Print the area in the format: `"Rectangle area is: $area"`.
   - In the `getPerimeter()` method:
     - Define a `perimeter` variable to store the result of the perimeter calculation.
     - Print the perimeter in the format: `"Rectangle perimeter is: $perimeter"`.
   - Provide getter and setter methods for `length` and `width`.

5. **Main Class**:
   - Create 2 objects of the `Circle` class named `c1` and `c2`:
     - `c1` with a radius of 5.
     - `c2` using the named constructor without a radius parameter.
   - Execute `getArea()` using `c1`.
   - Execute `getPerimeter()` using `c1`.
   - Print the radius of `c2`.
   - Create an object of the `Rectangle` class named `r1` with a length of 3 and a width of 5.
   - Execute `getArea()` using `r1`.
   - Modify either the length or width (but not both) to make the perimeter equal to 22.
   - Execute `getPerimeter()` using `r1`.

## Exercise 2

In this exercise, you will continue working with object-oriented programming by creating classes related to books and customers. Follow the instructions below:

### Instructions:

1. **Create a Dart file named `exercise2.dart`**.

2. **Person Class**:
   - Create a class called `Person` with the following attributes:
     - `name`
     - `email`

3. **Author Class**:
   - Create a class `Author` that extends `Person`.
   - Define a constructor.
   - Add an integer variable `id` that starts from 1 and increments automatically with each new object created.

4. **Book Class**:
   - Create a class `Book` with the following attributes:
     - `name`
     - `ISBN` (International Standard Book Number) as a string
     - `edition number`
     - `author` (an object of the `Author` class)

5. **Customer Class**:
   - Create a class `Customer` that extends `Person`.
   - Define a constructor.
   - Add a list called `bookList` (of type `Book`) to store purchased books.
   - Define two methods:
     - `addBook(Book book)`: to add a new book to the list.
     - `printInformation()`: to print:
       - Customer information.
       - Information about each book in the list, including the author.

6. **Main Class**:
   - Create 3 objects of type `Author` named `author1`, `author2`, and `author3`.
   - Create 3 objects of type `Book` named `book1`, `book2`, and `book3`.
   - Print the `id` for each author; they should all be different.
   - Create at least one object of type `Customer` named `customer1`.
   - Add books to `customer1`'s book list using the `addBook()` method.
   - Print information about `customer1` and their book list.




## Evaluation Criteria:

The project will be evaluated based on the following criteria:

- **Completion**: The extent to which the project meets all the minimum requirements, including the extra credit ideas if implemented.

- **Quality**: The overall quality of the project, including the coding style, organization, and ease of maintenance. Well-structured and readable code will be favorably evaluated.

- **Use of Programming Concepts**: How well you utilize programming concepts.
- **README.md File**: Include a README.md file with instructions on how to run and test the project. This file should provide a clear guide for users to understand how to interact with the CLI, and include relevant screenshots or output of the app to showcase its appearance and functionalities. Visuals can help users understand the app's design and layout.

#### Submission Details:
- *Deadline:* August 6, 2024, 9:59 AM
- *Submission Format:* Provide your Dart code file(s) along with a README file explaining your implementation.

Good luck, and happy coding!


Ensure you use object-oriented programming concepts and include error handling for user inputs.
