import 'dart:io';

void main(){
   int value;
   int doublevalue;

   print("Enter a number to double it or Enter 0 to stop");
   value = int.parse(stdin.readLineSync()!);

   while(value != 0){
     doublevalue = value *2;
     print("$value double is $doublevalue ");
     print("Enter a number to double it or Enter 0 to stop");
     value = int.parse(stdin.readLineSync()!);
     if(value == 0){
       print("Process stopped 0 cannot be doubled!!");
     }

   }
}