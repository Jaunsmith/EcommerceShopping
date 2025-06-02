import 'package:ecommerce_shopping/screens/cart/cart_screen.dart';
import 'package:ecommerce_shopping/screens/favorite/favorite_screen.dart';
import 'package:ecommerce_shopping/screens/home/home_screen.dart';
import 'package:ecommerce_shopping/screens/profile/user_profile_screen.dart';
import 'package:ecommerce_shopping/utilities/apps_color.dart';
import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int pagesIndex = 0;

  List<Widget> page = [
    HomeScreen(),
    FavoriteScreen(),
    CartScreen(),
    UserProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[pagesIndex],
      floatingActionButton: SizedBox(
        height: 60,
        width: 60,
        child: FloatingActionButton(
          onPressed: () {},
          shape: CircleBorder(),
          backgroundColor: AppColor.mainColor,
          child: Icon(Icons.qr_code_2, color: Colors.white, size: 40),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: [Icons.home, Icons.favorite, Icons.shopping_cart, Icons.person],
        activeIndex: pagesIndex,
        onTap: (index) {
          setState(() {
            pagesIndex = index;
          });
        },
        activeColor: AppColor.mainColor,
        inactiveColor: Colors.grey.shade500,
        backgroundColor: Colors.white,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        iconSize: 25,
        elevation: 0,
        rightCornerRadius: 10,
        leftCornerRadius: 10,
      ),
    );
  }
}
