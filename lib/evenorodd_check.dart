import 'dart:io';

void main(){
  print("Enter a number to check if its Even or Odd");
  int num = int.parse(stdin.readLineSync()!);
  if(num%2 ==0) {
    print("The number $num is an Even number");
  }
  else{
    print("The number $num is an Odd numner");
  }
}