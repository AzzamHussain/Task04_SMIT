// Write a program that takes a list of numbers as input and prints the
// numbers greater than 5 using a for loop and if-else condition.
import 'dart:io';

void main(){
    print("Enter a list of numbers separated by spaces:");
  String input = stdin.readLineSync()!;
  List<String> numbersString = input.split(' ');
  // Convert the input numbers from strings to integers
  List<int> numbers = numbersString.map(int.parse).toList();
  print("The greatest numbers are:");
  for (int i = 0; i <numbers.length; i++) {
    if (numbers[i]>5) {
      print(numbers[i]);
    } 
  }
}