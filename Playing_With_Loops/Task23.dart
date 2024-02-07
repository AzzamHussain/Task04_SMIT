// Write a program that takes a list of integers as input and returns a new
// list containing only the prime numbers from the original list. Implement
// the solution using a for loop and logical operations.
import 'dart:math';
import 'dart:io';

void main() {
  print("Enter a list of numbers separated by spaces:");
  List<String> input = stdin.readLineSync()!.split(' ');
  List<int> numbers = input.map(int.parse).toList();

  List<int> primeNumbers = [];

  for (int number in numbers) {
    if (Prime_Num(number)) {
      primeNumbers.add(number);
    }
  }

  print("Prime Numbers in the list: $primeNumbers");
}
Prime_Num(int number) {
  if (number <= 1) {
     return false;
  }
  for (int i = 2; i <= sqrt(number); i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}  


