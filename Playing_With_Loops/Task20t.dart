

// Write a program that calculates the sum of the squares of all odd
// numbers in a given list using a for loop and if-else condition.
//import 'dart:io';
void main(){
  //  print("Enter a list of numbers separated by spaces:");
  // String input = stdin.readLineSync()!;
  // List<String> numbersString = input.split(' ');
  // // Convert the input numbers from strings to integers
  // List<int> numbers = numbersString.map(int.parse).toList();
  // //  for (int i = 0; i < numbersString.length; i++) {
  // //   numbers.add(int.parse(numbersString[i]));
  // // }
  List numbers=[2,9,78,56,4,34,10,7,3];
  int sumOfSquares=0;
  for (int i = 0; i <numbers.length; i++) { /******SIR MAINAI INPUT SE KARNAY KI KOSHISH BUT UNHANDLED OUTPUT KI EXCEPTION ARAHI***/
    if (numbers[i]%2 !=0) {
      int square=numbers[i]*numbers[i];
      sumOfSquares+=square;
    }
  }
  print("Sum Of Squares:$sumOfSquares");
}