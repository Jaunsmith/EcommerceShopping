import 'package:ecommerce_shopping/screens/payments/payment_method_screen.dart';
import 'package:ecommerce_shopping/utilities/apps_color.dart';
import 'package:ecommerce_shopping/utilities/distance_between.dart';
import 'package:ecommerce_shopping/widgets/input_form_filed.dart';
import 'package:flutter/material.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Shipping Address',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: AppColor.mainColor,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 10, right: 10, top: 40),
            child: Column(
              children: [
                InputFormFiled(text: 'Full Name', icons: Icons.person),
                30.height,
                InputFormFiled(text: 'Phone', icons: Icons.phone),
                30.height,
                InputFormFiled(text: 'Address', icons: Icons.location_on),
                30.height,
                InputFormFiled(
                  text: 'City',
                  icons: Icons.location_city_rounded,
                ),
                30.height,
                InputFormFiled(
                  text: 'State/Province',
                  icons: Icons.location_city,
                ),
                30.height,
                InputFormFiled(
                  text: 'Zip Code(Postal Code)',
                  icons: Icons.phone,
                ),
                30.height,
                InputFormFiled(
                  text: 'Country',
                  icons: Icons.location_city_sharp,
                ),
                30.height,
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PaymentMethodScreen(),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: AppColor.mainColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Save Address',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
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
