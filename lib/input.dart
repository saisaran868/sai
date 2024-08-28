import 'dart:io';

void main(){
  stdout.writeln("Enter your name:");
  String? name = stdin.readLineSync();
  stdout.writeln("Enter your age");
   var age = stdin.readLineSync();
   var realAge = int.parse(age?? '0');
   print("Your name is $name and your age is $realAge");

//excercise on loops using inputs;
 int price = int.parse(stdin.readLineSync()!);
 int sum = realAge + price;
 print(sum);
}