# Dart CLI App

A simple Dart CLI app showcasing object-oriented programming concepts by creating classes and using error handling.

## Overview

The app contains 2 files representing solutions to coding problems based on pre-given instructions: **Exercise1** and **Exercise2**.

## OOP Concepts Applied

- Abstraction
- Encapsulation
- Polymorphism
- Inheritance

## Exercises

### Exercise 1

- **Abstract class `Shape`**
- **`Circle` class**: Inherited from `Shape`
- **`Rectangle` class**: Inherited from `Shape`

Object creation and method execution were performed on the classes created above.

### Exercise 2

- **`Person` class**
- **`Author` class**: Inherited from `Person`
  - Static variable concept applied using a counter to generate an ID for each object created.
- **`Book` class**
  - `Author` class is used in one of the attributes
  - Error catching used to verify one of the fields
- **`Customer` class**: Inherited from `Person`
  - Includes a list of type `Book`
  - Has a method to add books to the list
  - Has a method that prints information related to `Customer`, `Book`, and `Author`

## How to Run

1. Ensure you have Dart installed on your machine.
2. Clone the repository or download the source code.
3. Navigate to the project directory in your terminal.
4. Run the exercises using the Dart command:
   ```bash
   dart run bin/assignment_7.dart
