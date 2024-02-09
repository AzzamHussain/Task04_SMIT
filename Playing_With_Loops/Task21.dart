// // Write a program that takes a list of student details as input, where
// // each student is represented by a map containing their name, marks,
// // section, and roll number. The program should determine the grade of
// // each student based on their average score (assuming maximum marks
// // for each subject is 100) and print the student's name along with their
// // grade.
// //  List<Map<String, dynamic>> studentDetails = [
// // {'name': 'John', 'marks': [80, 75, 90], 'section': 'A', 'rollNumber': 101},
// // {'name': 'Emma', 'marks': [95, 92, 88], 'section': 'B', 'rollNumber': 102},
// // {'name': 'Ryan', 'marks': [70, 65, 75], 'section': 'A', 'rollNumber': 103},
// // ];
//  //String name='azzam';

// void main(){
//   Initialize an empty list to store student details.
// Input student details:
// Iterate until all student details are provided.
// For each student, input their name, marks, section, and roll number.
// Create a map containing the student's details and add it to the list.
// Iterate through each student's details in the list:
// Extract the marks of the student.
// Calculate the average score for the student by summing up their marks and dividing by the total number of subjects (assuming maximum marks for each subject is 100).
// Determine the grade based on the average score using the grading criteria mentioned above.
// Print the student's name along with their grade.
// End of the program.
// This algorithm outlines the steps required to determine the grade of each student based on their average score and print their name along with the grade. You can implement these steps in your preferred programming language to create the desired program.
 
// }

import 'dart:io';

    void main() {
//   List<Map<String, dynamic>> studentDetails = [
//     {
//       'name': 'John',
//       'marks': [80, 75, 90],
//       'section': 'A',
//       'rollNumber': 101
//     },
//     {
//       'name': 'Emma',
//       'marks': [95, 92, 88],
//       'section': 'B',
//       'rollNumber': 102
//     },
//     {
//       'name': 'Ryan',
//       'marks': [70, 65, 75],
//       'section': 'A',
//       'rollNumber': 103
//     },
//   ];
  bool userInput = true;
  int i = 1;
  String? name = "";
  int noOfSubs = 0;
  List markList = [];
  String? section = "";
  String? rollNumber = "";

  List<Map<String, dynamic>> studentDetails = [];

  while (userInput) {
    print("Student $i details : ");
    stdout.write("Enter Student Name : ");
    name = stdin.readLineSync();
    stdout.write("Enter The Number Subjects You have obtained marks in : ");
    String? Subs = stdin.readLineSync();

    noOfSubs = int.parse(Subs ?? "4");
    markList = subjects(noOfSubjects: noOfSubs);
    stdout.write("Enter Section : ");
    section = stdin.readLineSync();
    stdout.write("Enter RollNumber : ");
    rollNumber = stdin.readLineSync();

    studentDetails.add({
      'name': name,
      'marks': markList,
      'section': section,
      'rollNumber': rollNumber,
    });

    stdout.write("continue --> Y/ N :");
    String? continuation = stdin.readLineSync()!;
    if (continuation.toUpperCase() == "Y") {
      userInput = true;
      i++;
    } else if (continuation.toUpperCase() == "N") {
      userInput = false;
    } else {
      print("Invalid input ");
      userInput = false;
    }
  }

  num totalmarksofEach = 0;
  for (var i = 0; i < studentDetails.length; i++) {
        // final
          totalmarksofEach = studentDetails[i]['marks'].length * 100;
  }
  num aggregate = 0;
  for (var i = 0; i < studentDetails.length; i++) {
    aggregate = ((totalmarks(studentDetails[i]['marks']) / totalmarksofEach) * 100);
    aggregate = aggregate.floorToDouble();

    print("aggregate of student ${studentDetails[i]['name']} is : ${aggregate}% having ${grading(aggregate)}");
        "aggregate of student ${studentDetails[i]['name']} of Section ${studentDetails[i]["section"]} is : ${aggregate}% having Grade : ${grading(aggregate)}";
    }
  }
  totalmarks(var marks) {
  num total = 0;
  for (var mark in marks) {
    total += mark;
  }
  return total;
}

 grading(num aggregate) {
   if (aggregate <= 100 && aggregate >= 80) {
    return ("grade A");
    return ("A");
  } else if (aggregate < 80 && aggregate >= 70) {
    return ("grade B");
    return ("B");
  } else if (aggregate < 70 && aggregate >= 60) {
    return ("grade C");
    return ("C");
  } else {
    return ("grade F --> course Failed");
  }
}

subjects({int? noOfSubjects}) {
  List markList = [];
  for (var i = 1; i <= noOfSubjects!; i++) {
    stdout.write("enter mark of subject $i ; ");
    String? mark = stdin.readLineSync();
    int marks = int.parse(mark!);
    markList.add(marks);
  }
  return (markList);
}