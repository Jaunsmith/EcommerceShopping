import 'dart:async';
import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_shopping/screens/home/home_screen.dart';
import 'package:ecommerce_shopping/screens/welcome/onboarding_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OnboardingScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: CachedNetworkImage(
              imageUrl:
                  'https://i.pinimg.com/originals/e2/ee/d4/e2eed4fcbca3b19b19616abd29428d0e.jpg',
              placeholder: (context, url) => CircularProgressIndicator.adaptive(
                backgroundColor: Colors.green,
              ),
              errorWidget: (context, url, error) =>
                  Icon(Icons.error, color: Colors.red),
              fit: BoxFit.cover,
            ),
          ),
          // Ask if this blur is needed or not ...
          /* Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 0, sigmaY: 5),
              child: Container(color: Colors.black.withOpacity(0.1)),
            ),
          ),*/
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.shopping_cart, color: Color(0xFFDB3022), size: 250),
                Text(
                  'WELCOME TO OWOVICKKY SHOP',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
