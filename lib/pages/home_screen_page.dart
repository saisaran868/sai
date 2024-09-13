import 'package:flutter/material.dart';
import 'package:sai/pages/cart_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Login/login_screen.dart';
import 'account_page.dart';
import 'home_page.dart';
import 'menu_page.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({super.key});

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  int currentPageIndex = 0;

  onPageChange(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  Widget loadPages() {
    switch (currentPageIndex) {
      case 0:
        return const Homepage();
      case 1:
        return const AccountPage();
      case 2:
        return const CartPage();
      case 3:
        return const MenuPage();
      default:
        return const Homepage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text("Amazon",style: TextStyle(color: Colors.white),),
        actions: [
          IconButton(onPressed: () {
            logout();
          }, icon: const Icon(Icons.exit_to_app,color: Colors.white,

          ),),
        ],
      ),
      body:loadPages(),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPageIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        selectedItemColor: Colors.greenAccent,
        unselectedItemColor: Colors.grey[700],
        onTap: (index) {
          onPageChange(index);
        },
        items: const[

          BottomNavigationBarItem(
            icon:
            Icon(Icons.home_outlined),
            label: "",

          ),
          BottomNavigationBarItem(
            icon:
            Icon(Icons.person_2_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon:
            Icon(Icons.shopping_cart_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon:
            Icon(Icons.menu_outlined),
            label: "",
          ),
        ],

      ),
    );
  }

  void logout() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );

  }
}
