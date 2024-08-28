import 'dart:io';

void main(){
  var list1 = [8 , 9 ,10 ,13 ,34];
  print("Enter the number check if it exsits");
  var n = int.parse(stdin.readLineSync()!);
  if(list1.contains(n)){
    print("Yes $n is there in the list ");
  }
  else{
    print("No the entered number doesnot exsits in the list");
  }

}