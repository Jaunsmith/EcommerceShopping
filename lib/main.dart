import 'package:ecommerce_shopping/screens/auth/code_screen.dart';
import 'package:ecommerce_shopping/screens/auth/login_screen.dart';
import 'package:ecommerce_shopping/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EcommerceShopping());
}

class EcommerceShopping extends StatelessWidget {
  const EcommerceShopping({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce Shopping',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.red),
      home: LoginScreen(),
    );
  }
}
