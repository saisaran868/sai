// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:sai/Login/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../pages/home_screen_page.dart';

 class SplashScreen extends StatefulWidget {
   const SplashScreen({super.key});
   @override
   State<SplashScreen> createState() => _SplashScreenState();
 }
 class _SplashScreenState extends State<SplashScreen> {
   @override
   void didChangeDependencies() {
     checkLogin();
     super.didChangeDependencies();
   }
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Container(
         alignment: Alignment.center,
         padding: const EdgeInsets.all(20),
         width: double.infinity,
         child: Column(
           mainAxisSize: MainAxisSize.min,
           children: [
             Image.asset(
               'assets/images/Amazon_logo.png',
               height: 100,
               width: 300,
             ),
             const SizedBox(
               height: 25,
             ),
             const CircularProgressIndicator.adaptive(),
           ],
         ),
       ),
     );
   }
   Future<void> checkLogin() async {
     await Future.delayed(const Duration(seconds: 2));
     final SharedPreferences prefs = await SharedPreferences.getInstance();
     String? email = prefs.getString("Email or mobile");
     if (email != null && email.isNotEmpty) {
       Navigator.pushReplacement(
         context,
         MaterialPageRoute(builder: (context) => const HomeScreenPage()),

       );
     }
     else {
       Navigator.pushReplacement(
         context,
         MaterialPageRoute(builder: (context) => const LoginScreen()),

       );
     }
   }
 }
