import 'dart:io';

void main(){
  //email verfication using loops

  print("Please enter your email address");
  String? email = stdin.readLineSync()!;

  while(!email.contains('@') || !email.contains('.')){
    print("The email u entered is invalid.");
    print("Please re-enter your email address");
    String? email = stdin.readLineSync();
  }
  print("The email $email is vaild!");


  //mcd menu slection

  int choice;

  do{

    print('\n');
    print("Select the iteam u want to order:");
    print("1. Dosa");
    print("2. Pongal");
    print("3. Idli");
    print("4. Vada");
    print("5. Exit");
    choice = int.parse(stdin.readLineSync()!);

    switch(choice){
      case 1:
        print("you choice Dosa");
        break;
      case 2:
        print("you choice Pongal");
        break;
      case 3:
        print("you choice Idli");
        break;
      case 4:
        print("you choice Vada");
        break;
      case 5:
        print("you are exited , you didnot order any item");
        break;

        default:
          print("Invalid iteam number.");



    }
  } while(choice != 5);


}