// Write a program that prints the Fibonacci sequence up to a given
// number using a for loop.
// Example:
// Input: 10
// Output: 0 1 1 2 3 5 8

import 'dart:io';

void main() {
 
  List<int> n = [2,4,6,7,8,1,4,90,12,48,65,34];

  // Print the Fibonacci sequence up to n
  print('Fibonacci sequence up to $n:');
  int a = 0, b = 1;
  for (int i = 0; a <= n.length; i++) {
    print('$a ');
    int sum = a + b;
    a = b;
    b = sum;
  }
}
