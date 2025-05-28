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
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}
