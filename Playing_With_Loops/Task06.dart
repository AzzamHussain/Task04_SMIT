// Implement a code that finds the largest element in a list using a for
// loop.
// Example:
// Input: [3, 9, 1, 6, 4, 2, 8, 5, 7]
// Output: Largest element: 9
void main(){
  List numbers= [3, 9, 1, 6, 4, 2, 8, 5, 7];
   int greatest= numbers[0]; 

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > greatest) {
      greatest = numbers[i]; 
    }
  }
  print("The greatest number is:$greatest");
 
}