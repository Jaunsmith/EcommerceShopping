import 'package:ecommerce_shopping/screens/auth/login_screen.dart';
import 'package:ecommerce_shopping/utilities/apps_color.dart';
import 'package:ecommerce_shopping/utilities/distance_between.dart';
import 'package:ecommerce_shopping/widgets/input_form_filed.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/freed.png'),
                Text(
                  'SIGN UP BELOW',
                  style: TextStyle(
                    color: AppColor.mainColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                20.height,
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      InputFormFiled(text: 'FullName', icons: Icons.person),
                      20.height,
                      InputFormFiled(text: 'Email', icons: Icons.email),
                      20.height,
                      InputFormFiled(
                        text: 'Enter Password',
                        isPassword: true,
                        icons: Icons.lock,
                      ),
                      20.height,
                      InputFormFiled(
                        text: 'Confirm Password',
                        isPassword: true,
                        icons: Icons.lock,
                      ),
                      20.height,
                      InputFormFiled(text: 'Phone', icons: Icons.phone),
                      20.height,
                      InputFormFiled(text: 'Address', icons: Icons.location_on),
                      20.height,
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFDB3022),
                          minimumSize: Size.fromHeight(55),
                          shadowColor: Colors.grey.shade200,
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          'Create an account',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      25.height,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an ? ',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black54,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginScreen(),
                                ),
                              );
                            },
                            child: Text(
                              'Login Here',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: AppColor.mainColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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
