import 'dart:io';

void main(){
  print("Enter a number in range of 1 to 100");
  int number = int.parse(stdin.readLineSync()!);

  while(number <1 || number >100){
    print("You entered a invalid number");
    print("Enter a number in range of 1 to 100");
    number = int.parse(stdin.readLineSync()!);
  }
  print("$number is vaild");
}