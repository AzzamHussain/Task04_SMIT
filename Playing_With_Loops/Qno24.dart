// Implement a code that finds the average of all the negative numbers in
//a list using a for loop and if-else condition.
import 'dart:io';

void main() {
  List<int> numbers = [];
  print("Enter the number of elements you want in the list:");
  int numberOfList = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < numberOfList; i++) {
    print("Enter element ${i + 1}:");
    int Input = int.parse(stdin.readLineSync()!);
    numbers.add(Input);
  }
  List<int> negativeNumbers = [];
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] < 0) {
      negativeNumbers.add(numbers[i]);
    }
  }
  negativeNumbers.sort();
  print('The numbers Less Than 0: $negativeNumbers');
  int sum = 0;
  for (var number in negativeNumbers) {
    sum = sum + number;
  }
  print('sum is $sum');
  int totalNumbers = 0;

  for (int number in negativeNumbers) {
    totalNumbers++;
    number;
  }
  print("Total Number $totalNumbers");
  int average;
  average = sum ~/ totalNumbers;
  print("Average of Negative Numbers is: $average");
}