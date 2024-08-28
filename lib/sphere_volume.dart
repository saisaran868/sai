import 'dart:io';

void main(){
  final pie = 3.141;
  print("Enter the radius of Sphere:");
  int r = int.parse(stdin.readLineSync()!);
  double volume = 4/3*(3.141)*(r*r*r);
  print(volume);
}