// Write a program that prints the multiplication table of a given number
// using a for loop.
import 'dart:io';
void main(){
  //  print("Enter a number for  multiplication table:");
  // String? input = stdin.readLineSync();
  // int? number= int.tryParse(input!);
  table(9);


}
 void table(int n){
  for(int i=1;i<=10;i++){
    int b=n*i;
    print(" $n x $i = $b");
  }
}