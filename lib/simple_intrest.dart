import 'dart:io';

void main(){
  //simple intrest calculator
  double p ,r ,t ;
  //p = principle
  //r = intrest rate
  //t = time in years
  double simpleIntrest;
  print("Enter the priciple amount :");
  p = double.parse(stdin.readLineSync()!);
  print("Enter the Intrest rate :");
  r = double.parse(stdin.readLineSync()!);
  print("Enter the No of years:");
  t = double.parse(stdin.readLineSync()!);
  simpleIntrest = (p*r*t)/100;
  print("The simple intrest is $simpleIntrest Total amount to be paid is ${p+simpleIntrest}");
}