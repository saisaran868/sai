import 'package:flutter/material.dart';
import 'package:sai/first_home_page.dart';

import 'login_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home:LoginScreen(),
   );
  }

}