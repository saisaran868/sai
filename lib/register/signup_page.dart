import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../pages/home_screen_page.dart';
class SignupPage extends StatefulWidget {
  const SignupPage({super.key});
  @override
  State<SignupPage> createState() => _SignupPageState();
}
class _SignupPageState extends State<SignupPage> {
   final formKey = GlobalKey<FormState>();
  bool passwordShow = true;
  bool confrimPasswordShow = true;
  bool isLoading = false;
  TextEditingController signupEmailController = TextEditingController();
  TextEditingController signupPasswordController = TextEditingController();
  TextEditingController signupConfirmPasswordController = TextEditingController();
   final border =  const OutlineInputBorder(
     borderSide: BorderSide(
       color: Colors.black,
       width: 3,
       style: BorderStyle.solid,
     ),
   ) ;

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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               AppBar(),
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
               TextFormField(
                 decoration: InputDecoration(
                   hintText: 'Email or mobile phone number',
                   prefixIcon: const Icon(Icons.person),
                   errorBorder: errorBorder,
                   focusedErrorBorder:errorBorder,
                   focusedBorder:border,
                   enabledBorder: border,
                 ),
                 controller: signupEmailController,
                 textInputAction: TextInputAction.next,
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
                const SizedBox(height: 30,),
                 TextFormField(
                  decoration:  InputDecoration(
                    hintText: 'Enter password',
                    errorBorder: errorBorder,
                    focusedErrorBorder: errorBorder,
                    enabledBorder: border,
                    focusedBorder: border,
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        passwordShow = !passwordShow;
                      });
                    },  icon: Icon(
                      passwordShow ? Icons.visibility_off : Icons.visibility,
                    ),),
                  ),
                   obscureText: passwordShow,
                   controller: signupPasswordController,
                   textInputAction: TextInputAction.next,
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
                const SizedBox(height: 30,),
                TextFormField(
                  decoration:  InputDecoration(
                    hintText: 'Confirm password',
                    focusedErrorBorder: errorBorder,
                    errorBorder: errorBorder,
                    enabledBorder: border,
                    focusedBorder: border,
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        confrimPasswordShow = !confrimPasswordShow;
                      });
                    }, 
                    icon: Icon(
                      confrimPasswordShow ? Icons.visibility_off : Icons.visibility,
                    ),

                    ),
                  ),
                  obscureText: confrimPasswordShow,
                  controller: signupConfirmPasswordController,
                  textInputAction: TextInputAction.next,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please confirm your password';
                    }
                    if (value != signupPasswordController.text) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 30,),
            
                SizedBox(height: 56,
                  child: TextButton(onPressed: (){
                    signup();
                  },style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                  ),
                      child: isLoading? const CircularProgressIndicator():
                       const Row(
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

      ),

    );
  }
  
   void signup () async{
     setState(() {
     });
     isLoading = true;
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
     final SharedPreferences prefs = await SharedPreferences.getInstance();
     final email = signupEmailController.text;
     prefs.setString("Email or mobile", email);

   }
}
