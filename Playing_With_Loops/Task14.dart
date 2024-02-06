// Write a program to make a pyramid pattern with numbers increased by

//    1
//   2 3
//  4 5 6
// 7 8 9 10
import 'dart:io';
void main(){
   print("Enter rows for pattern:");
  int number = int.parse(stdin.readLineSync()!);
  int n=1;
  for (int i = 1; i <= number; i++) {
     for (int space = number; space > i; space--) {
      stdout.write(" ");
    }
    for (int j = 1; j <=i; j++) {
      //stdout.write(i+j);
      stdout.write("$n ");
      n++;
    }
    print(" ");
  }

}