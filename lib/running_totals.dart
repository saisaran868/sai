import 'dart:io';

void main(){
  int days;
  double sales;
  double totalsales =0.0;

  print("No of days sales happened for ?");
  days = int.parse(stdin.readLineSync()!);

  for(int count=1; count <=days; count++){
    print("Enter the sales for day $count");

    sales = double.parse(stdin.readLineSync()!);
    totalsales = totalsales + sales;
  }
  print("Total sales for $days days are $totalsales");
}