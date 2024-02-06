// Write a program that counts the number of vowels in a given string
// using a for loop and if-else condition.
void main(){
  String name="AzzamHussain";
  int count=0;
  for (var i = 0; i < name.length; i++) {
     if (name[i] == 'a' || name[i] == 'e' || name[i] == 'i' || name[i] == 'o' || name[i] == 'u' ||
        name[i] == 'A' || name[i] == 'E' || name[i] == 'I' || name[i] == 'O' || name[i] == 'U') {
      count++; 
    }
  }
  print("Vowels in the string are:$count");

}