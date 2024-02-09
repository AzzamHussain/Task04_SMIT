// Write a program that asks the user for their email and password. If the
// email and password match a predefined set of credentials, print "User
// login successful." Otherwise, keep asking for the email and password
// until the correct credentials are provided.
import 'dart:io';

void main(){
  Map credentials={"emailp":"azzamhussain@gmail.com","passwordp":"1234"};
bool Login=false;
while(!Login){
  print("Enter your Email:");
  String email=stdin.readLineSync()!;
  print("Enter your Password:");
  String password=stdin.readLineSync()!;
  while (email==credentials["emailp"] && password==credentials["passwordp"]) {
    print("Login Succesfull");
   } 
  }
  

}