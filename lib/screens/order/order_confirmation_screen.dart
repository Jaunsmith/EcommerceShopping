import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_shopping/screens/order/successful_order_screen.dart';
import 'package:ecommerce_shopping/screens/payments/payment_method_screen.dart';
import 'package:ecommerce_shopping/screens/profile/address_screen.dart';
import 'package:ecommerce_shopping/utilities/apps_color.dart';
import 'package:ecommerce_shopping/utilities/distance_between.dart';
import 'package:flutter/material.dart';

class OrderConfirmationScreen extends StatelessWidget {
  const OrderConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Confirmed Order',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        backgroundColor: AppColor.mainColor,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                20.height,
                Text(
                  'Shipping Address',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                15.height,
                Container(
                  height: 130,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2,
                        spreadRadius: 2,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Dear Adedeji,',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AddressScreen(),
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.published_with_changes,
                                  color: AppColor.mainColor,
                                ),
                                3.width,
                                Text(
                                  'Change',
                                  style: TextStyle(
                                    color: AppColor.mainColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      5.height,
                      Text(
                        'House 3, Lagere,',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Ile-Ife, Osun State, 22098, Nigeria ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      5.height,
                      Text(
                        '07039909555',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                20.height,
                Text(
                  'Payment  Method',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 70,
                          margin: EdgeInsets.only(top: 10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 2,
                                spreadRadius: 2,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          child: CachedNetworkImage(
                            imageUrl:
                                'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Mastercard_2019_logo.svg/1200px-Mastercard_2019_logo.svg.png',
                          ),
                        ),
                        5.width,
                        Text(
                          '**** **** **** 7654',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PaymentMethodScreen(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.published_with_changes,
                            color: AppColor.mainColor,
                          ),
                          3.width,
                          Text(
                            'Change',
                            style: TextStyle(
                              color: AppColor.mainColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                20.height,
                Text(
                  'Delivery  Method',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 70,
                          margin: EdgeInsets.only(top: 10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 2,
                                spreadRadius: 2,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          child: CachedNetworkImage(
                            imageUrl:
                                'https://wallpapers.com/images/hd/fed-ex-ship-center-logo-w9vr0z7u0hbyri8f-2.png',
                          ),
                        ),
                        10.width,
                        Text(
                          'Arrives in 3 - 7 days',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                20.height,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sub-Total',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    Text(
                      '\$ 400.50',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                20.height,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shipping Fees',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    Text(
                      '\$ 30.50',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                10.height,
                Divider(height: 30, color: Colors.black45),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Payment',
                      style: TextStyle(color: Colors.black87, fontSize: 16),
                    ),
                    Text(
                      '\$ 431.00',
                      style: TextStyle(
                        color: AppColor.mainColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                50.height,
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SuccessfulOrderScreen(),
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
                        'Confirm order',
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
