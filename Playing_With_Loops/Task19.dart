// Implement a code that finds the maximum and minimum elements in a
// list using a for loop and if-else condition.

void main(){
  List elements=[2,7,9,4,6,89,98];
  int maxElement=elements[0];
  int minElement=elements[0];
  for (int i = 1; i < elements.length; i++) {
    if (elements[i]>maxElement) {
      maxElement=elements[i];
    }
    if (elements[i]<minElement) {
      minElement=elements[i];
    }
  }
  print("The maximum elements is :$maxElement");
  print("The minimum elements is :$minElement");


}