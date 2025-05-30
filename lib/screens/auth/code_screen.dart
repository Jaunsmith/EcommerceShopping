import 'package:ecommerce_shopping/screens/auth/recovery_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class CodeScreen extends StatelessWidget {
  CodeScreen({super.key, required this.receiver});

  final String receiver;
  final String check = '111111';
  late final TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 60,
      height: 60,
      textStyle: const TextStyle(
        fontSize: 25,
        color: Colors.black54,
        fontWeight: FontWeight.bold,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1.3),
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
    );
    final focusPinTheme = PinTheme(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.red, width: 1.5),
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Enter OTP",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        automaticallyImplyLeading: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kindly enter the 6 digits code sent to your $receiver',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Pinput(
                autofocus: true,
                controller: otpController,
                length: 6,
                focusedPinTheme: focusPinTheme,
                defaultPinTheme: defaultPinTheme,
                onCompleted: (pin) {
                  if (pin == check) {
                    if (kDebugMode) {
                      print('Correct Pin');
                    }
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Valid OTP'),
                        duration: Duration(seconds: 3),
                      ),
                    );
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RecoveryScreen(),
                      ),
                    );
                  } else {
                    if (kDebugMode) {
                      print('Incorrect Pin');
                    }
                    otpController.text = '';
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Invalid OTP',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        duration: Duration(seconds: 3),
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
