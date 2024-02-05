// Write a program to display the cube of the number up to an integer.
import 'dart:io';
import 'dart:math';
void main(){
  int cube;
   print("Enter a number to find cube:");
  int number = int.parse(stdin.readLineSync()!);
  cube=pow(number, 3).toInt();
  print("The cube of a given number is :$cube");
}