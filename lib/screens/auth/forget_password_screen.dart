import 'package:ecommerce_shopping/screens/auth/code_screen.dart';
import 'package:ecommerce_shopping/utilities/apps_color.dart';
import 'package:ecommerce_shopping/utilities/distance_between.dart';
import 'package:ecommerce_shopping/widgets/input_form_filed.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  late String receiver = 'Mail';
  bool verify = true;
  bool clearButton = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        elevation: 0,
        foregroundColor: AppColor.mainColor,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            20.height,
            Text(
              'Forgot Password',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            20.height,
            Text(
              'Kindly enter your Mail or Number below to reset your password, a link will be send ',
            ),
            10.height,
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      verify = true;
                      receiver = 'Mail';
                    });
                  },
                  child: Text(
                    'Click to use Mail',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      verify = false;
                      receiver = 'Number';
                    });
                  },
                  child: Text(
                    'Click to use Number',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            20.height,
            verify
                ? InputFormFiled(
                    textEditingController: emailController,
                    suffix: InkWell(
                      onTap: () {
                        emailController.clear();
                      },
                      child: Icon(Icons.close, size: 26),
                    ),
                    text: 'Enter Mail',
                    icons: Icons.mail,
                    onChange: (value) {
                      if (value != "") {
                        setState(() {
                          clearButton = true;
                        });
                      }
                    },
                  )
                : InputFormFiled(
                    textEditingController: numberController,
                    suffix: InkWell(
                      onTap: () {
                        numberController.clear();
                      },
                      child: Icon(Icons.close, size: 26),
                    ),
                    text: 'Enter Number',
                    icons: Icons.phone,
                    onChange: (value) {
                      if (value != "") {
                        setState(() {
                          clearButton = true;
                        });
                      }
                    },
                  ),
            20.height,
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CodeScreen(receiver: receiver),
                  ),
                );
              },
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
                'Send Code',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
