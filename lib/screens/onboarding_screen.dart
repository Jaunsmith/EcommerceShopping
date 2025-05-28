import 'package:ecommerce_shopping/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    final pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
      bodyTextStyle: TextStyle(fontSize: 20),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
      bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: 'Shop Now',
          body: 'The best place to shop your favorite items!',
          image: Image.asset('assets/images/splash1.png', width: 200),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'Secure Payment',
          body: 'Secure and fast payment options available.',
          image: Image.asset('assets/images/splash2.png', width: 200),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'Fast Delivery',
          body: 'We deliver your products quickly to your doorstep."!',
          image: Image.asset('assets/images/splash3.png', width: 200),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'Big Discount',
          body:
              'Enjoy up to 20% off on your favorite items. Limited time only!',
          image: Image.asset('assets/images/discount.png', width: 200),
          decoration: pageDecoration,
        ),
      ],
      showSkipButton: true,
      showDoneButton: true,
      showBackButton: true,
      back: Icon(Icons.arrow_back_ios, color: Color(0xFFEF6969), size: 30),
      next: Icon(Icons.arrow_forward_ios, color: Color(0xFFEF6969), size: 30),
      skip: Text(
        'Skip',
        style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xFFEF6969)),
      ),
      done: Text(
        'Done',
        style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xFFEF6969)),
      ),
      onDone: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      },
      onSkip: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      },
      dotsDecorator: DotsDecorator(
        size: Size.square(12),
        activeSize: Size(20, 10),
        color: Colors.black26,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        spacing: EdgeInsets.symmetric(horizontal: 5),
      ),
    );
  }
}
