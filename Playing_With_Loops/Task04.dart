// Implement a code that finds the factorial of a number using a while
// loop or for loop.
// Example:
// Input: 5
// Output: Factorial of 5 is 120
import 'dart:io';

void main(){
   print("Enter a number except 0:");
  int number = int.parse(stdin.readLineSync()!);
  int factorial=1;
  if (number < 0){
    print("Error! Factorial of a negative number doesn't exist.");
  }
    else {
      for(int i = 1; i <= number; ++i) {
        factorial *=i;
        }
        print("Factorial of a given number is:$factorial");
  }
}