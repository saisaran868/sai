import 'dart:io';

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AppBar(),
            Image.asset(
              'assets/images/Amazon_logo.png',
              height: 100,
              width: 300,
            ),
            const SizedBox(height: 30),
            const Text(
              "Login",
              style: TextStyle(
                fontSize: 35,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: 'Arial',
              ),
            ),
            const SizedBox(height: 28),
            TextField(
              decoration: const InputDecoration(
                hintText: 'Email or mobile phone number',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),

              ),

              textInputAction: TextInputAction.next,
              controller: emailController,
            ),
            const SizedBox(height: 30),
            TextField(
              decoration: const InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.remove_red_eye),
              ),
              textInputAction: TextInputAction.done,
              obscureText: true,
              controller: passwordController,
            ),
            const SizedBox(height: 39),
            SizedBox(
              height: 56,
              child: ElevatedButton(
                onPressed: () {
                  print("${emailController.text}");
                  print("${passwordController.text}");
                  print("The Login button is clicked");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent,
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 7),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Need account? Sign up",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
