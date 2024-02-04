
// Write a program that takes a list of numbers as input and prints the
// even numbers in the list using a for loop.
// Example:
// Input: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
// Output: 2 4 6 8 10

import 'dart:io';

void main() {
//  List a=[1,2,3,8,7,5,3,90,86,54,6];
  // Prompt the user to enter a list of numbers separated by spaces
  print("Enter a list of numbers separated by spaces:");
  
  // Read the user input
  String input = stdin.readLineSync()!;
  
  // Split the input string by spaces to get individual numbers
  List<String> numbersString = input.split(' ');

  // Convert the input numbers from strings to integers
  List<int> numbers = numbersString.map(int.parse).toList();
 for(int i=0;i<numbers.length;i++){
  if(numbers[i]%2==0){
    stdout.write("${numbers[i]}");
  }
 }
}
