import 'package:ecommerce_shopping/utilities/apps_color.dart';
import 'package:ecommerce_shopping/utilities/distance_between.dart';
import 'package:flutter/material.dart';

import '../navigation/navigation_screen.dart';

class SuccessfulOrderScreen extends StatelessWidget {
  const SuccessfulOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            height: 350,
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: AppColor.mainColor, width: 2),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.check,
                      color: AppColor.mainColor,
                      size: 40,
                    ),
                  ),
                ),
                10.height,
                Text('Hey, Adedeji', style: TextStyle(fontSize: 20)),
                Text(
                  'Your order has been confirmed',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                10.height,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('order Number:  ', style: TextStyle(fontSize: 20)),
                    Text(
                      'NZ472591076',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: AppColor.mainColor,
                      ),
                    ),
                  ],
                ),
                10.height,
                Text(
                  'Copy of the order details has been sent to your mail',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                10.height,
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NavigationScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Continue Shopping',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: AppColor.mainColor,
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
}
