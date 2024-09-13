import 'package:flutter/material.dart';
import 'package:sai/pages/home_screen_page.dart';
import 'package:sai/register/signup_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final formKey = GlobalKey<FormState>();
  bool _obscureText = true;
  bool isLoading = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  
  final border = const OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.black,
      width: 3,
      style: BorderStyle.solid,
    ),
  );
  final errorBorder =const  OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.red,
      width: 3,
      style: BorderStyle.solid,
    ),
  );

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title:const  Text("Login"),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

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
              const SizedBox(height: 30),
              TextFormField(
                decoration:  InputDecoration(
                  hintText: 'Email or mobile phone number',
                  errorBorder: errorBorder,
                  focusedErrorBorder: errorBorder,
                  enabledBorder: border,
                  focusedBorder: border,
                  prefixIcon: const Icon(Icons.person),
                ),
                textInputAction: TextInputAction.next,
                controller: emailController,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email or phone number';
                  }
                  // Basic email or phone validation
                  if (!RegExp(r'^[^@]+@[^@]+\.[^@]+$').hasMatch(value) &&
                      !RegExp(r'^[0-9]{10,}$').hasMatch(value)) {
                    return 'Please enter a valid email or phone number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 30),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  enabledBorder: border,
                  focusedBorder: border,
               errorBorder: errorBorder,
               focusedErrorBorder: errorBorder,
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                    ),
                  ),
                ),
                textInputAction: TextInputAction.done,
                obscureText: _obscureText,
                controller: passwordController,
                autovalidateMode: AutovalidateMode.onUserInteraction,

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  // Updated password validation regex
                  final passwordRegExp = RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$');
                  if (!passwordRegExp.hasMatch(value)) {
                    return 'Password must be at least 8 characters long and include:\n- At least one uppercase letter\n- At least one lowercase letter\n- At least one special character';
                  }
                  return null;
                },
                
              ),
              
              const SizedBox(height: 39),
              SizedBox(
                height: 56,
                child: ElevatedButton(
                  
                  onPressed: ()  {

                    login();

                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  child: isLoading ?const CircularProgressIndicator():

                   const Row(
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignupPage()),
                  );
                },
                child: const Text(
                  "Need an account? Sign up",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }




  void login () async{
    setState(() {
      isLoading = true;
    });

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("Email or mobile", emailController.text);

    await Future.delayed(const Duration(seconds :2));
   if (formKey.currentState?.validate() ?? false) {
                       Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreenPage()),

                  );
                  return;
                    }
   setState(() {
     isLoading = false;
   });

  }

}
