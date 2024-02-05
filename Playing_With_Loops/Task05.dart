// Write a program that calculates the sum of all the digits in a given
// number using a while loop.
// Example:
// Input: 12345
// Output: Sum of digits: 15
import 'dart:io';
void main(){
  int sum=0;
   print("Enter a number except 0:");
  int number = int.parse(stdin.readLineSync()!);
  while (number!=0) {
    sum += number % 10;
    number ~/= 10; // Remove the last digit from number


  }
    print("The sum of all digits are:$sum");

}