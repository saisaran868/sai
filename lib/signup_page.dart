import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool PasswordShow = true;
  TextEditingController signupEmailController = TextEditingController();
  TextEditingController signupPasswordController = TextEditingController();
  TextEditingController signupConfirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    const border =  OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
        width: 3,
        style: BorderStyle.solid,
      ),
    ) ;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             AppBar(

             ),
              Image.asset(
                'assets/images/Amazon_logo.png',
                height: 100,
                width: 300,
              ),
               const SizedBox(height: 30,),

              const Text("Sign up",style:
                TextStyle(
                  fontSize: 35,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                ),
              ),
             const SizedBox(height: 30,),
             TextField(
               decoration: const InputDecoration(
                 hintText: 'Email or mobile phone number',
                 prefixIcon: Icon(Icons.person),
                 focusedBorder:border,
                 enabledBorder: border,
               ),
               controller: signupEmailController,
               textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 30,),
               TextField(
                decoration:  InputDecoration(
                  hintText: 'Enter password',
                  enabledBorder: border,
                  focusedBorder: border,
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(onPressed: (){
                    setState(() {
                      PasswordShow = !PasswordShow;
                    });
                  }, icon: const Icon(Icons.remove_red_eye)),
                ),
                 obscureText: PasswordShow,
                 controller: signupPasswordController,
                 textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 30,),
              TextField(
                decoration:  InputDecoration(
                  hintText: 'Confirm password',
                  enabledBorder: border,
                  focusedBorder: border,
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(onPressed: (){
                    setState(() {
                      PasswordShow = !PasswordShow;
                    });
                  }, icon: const Icon(Icons.remove_red_eye)),
                ),
                obscureText: PasswordShow,
                controller: signupConfirmPasswordController,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 30,),

              SizedBox(height: 56,
                child: TextButton(onPressed: (){

                },style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Sign up",style: TextStyle(
                          fontSize: 20,

                        ),),

                      ],
                    ),
                ),
              ),
            ],
          ),
        ),

      ),

    );
  }
}
