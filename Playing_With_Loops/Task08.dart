// Implement a function that checks if a given string is a palindrome.
// Example:
// Input: "radar"
// Output: "radar" is a palindrome.

 import 'dart:io';
 bool isPalindrome(String word){
    int start=0;
    int end=word.length-1;
    while (start<end) {
      if (word[start].toLowerCase()!=word[end].toLowerCase()) {
        return false;
      } 
      start++;
      end--;
    }
    return true;
  }
  String getInputFromUser() {
  print("Enter a string to check if it's a palindrome:");
  return stdin.readLineSync()!;
}

  void main(){
    String userInput = getInputFromUser();

    if (isPalindrome(userInput)) {
      print("Palindrome string $userInput");
    } else {
      print("not a palindrom");
      
    }
  }
