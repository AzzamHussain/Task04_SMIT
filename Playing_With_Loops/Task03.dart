// Implement a code that checks whether a given number is prime or not.
// Example:
// Input: 17
// Output: 17 is a prime number.
import 'dart:math';
import 'dart:io';

void main() {
  // Read the number from the user
  print("Enter a number:");
  int number = int.parse(stdin.readLineSync()!);

  bool isPrime = true;

  if (number <= 1) {
    isPrime = false; // 0 and 1 are not prime numbers
  } else {
    for (int i = 2; i <= sqrt(number); i++) {
      if (number % i == 0) {
        isPrime = false; // If n is divisible by any i, it's not prime
        break;
      }
    }
  }

  if (isPrime) {
    print('$number is a prime number');
  } else {
    print('$number is not a prime number');
  }
}

