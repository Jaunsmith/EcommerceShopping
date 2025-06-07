import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_shopping/screens/order/order_confirmation_screen.dart';
import 'package:ecommerce_shopping/utilities/distance_between.dart';
import 'package:flutter/material.dart';

import '../../utilities/apps_color.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  int type = 1;

  void handle(Object? e) => setState(() {
    type = e as int;
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment Method',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        elevation: 0,
        backgroundColor: AppColor.mainColor,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 10, right: 20, top: 20),
          child: Column(
            children: [
              20.height,
              Container(
                width: size.width,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: type == 1
                      ? Border.all(width: 2, color: AppColor.mainColor)
                      : Border.all(width: 0.3, color: Colors.grey),
                  color: Colors.transparent,
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Radio(
                              value: 1,
                              groupValue: type,
                              onChanged: handle,
                              activeColor: AppColor.mainColor,
                            ),
                            5.width,
                            Text(
                              'Amazon Pay',
                              style: type == 1
                                  ? TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 15,
                                    )
                                  : TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                      fontSize: 15,
                                    ),
                            ),
                          ],
                        ),
                        CachedNetworkImage(
                          imageUrl:
                              'https://content.partnerpage.io/eyJidWNrZXQiOiJwYXJ0bmVycGFnZS5wcm9kIiwia2V5IjoibWVkaWEvY29udGFjdF9pbWFnZXMvZTFiYjVkM2YtMDYzYS00ZDRmLWFmNzItYWJmNGY0OWIzMWY5L2FtYXpvbnBheS1sb2dvLXJnYl9jbHIuX0NCMTU2MDkxMTMxNV8ucG5nIiwiZWRpdHMiOnsidG9Gb3JtYXQiOiJ3ZWJwIiwicmVzaXplIjp7IndpZHRoIjoxMjAwLCJoZWlnaHQiOjYyNywiZml0IjoiY29udGFpbiIsImJhY2tncm91bmQiOnsiciI6MjU1LCJnIjoyNTUsImIiOjI1NSwiYWxwaGEiOjB9fX19',
                          height: 70,
                          width: 110,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              20.height,
              Container(
                width: size.width,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: type == 2
                      ? Border.all(width: 2, color: AppColor.mainColor)
                      : Border.all(width: 0.3, color: Colors.grey),
                  color: Colors.transparent,
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Radio(
                              value: 2,
                              groupValue: type,
                              onChanged: handle,
                              activeColor: AppColor.mainColor,
                            ),
                            5.width,
                            Text(
                              'Google Pay',
                              style: type == 2
                                  ? TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 15,
                                    )
                                  : TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                      fontSize: 15,
                                    ),
                            ),
                          ],
                        ),
                        CachedNetworkImage(
                          imageUrl:
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Google_Pay_Logo.svg/1200px-Google_Pay_Logo.svg.png',
                          height: 70,
                          width: 110,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              20.height,
              Container(
                width: size.width,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: type == 5
                      ? Border.all(width: 2, color: AppColor.mainColor)
                      : Border.all(width: 0.3, color: Colors.grey),
                  color: Colors.transparent,
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Radio(
                              value: 5,
                              groupValue: type,
                              onChanged: handle,
                              activeColor: AppColor.mainColor,
                            ),
                            5.width,
                            Text(
                              'Apple Pay',
                              style: type == 5
                                  ? TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 15,
                                    )
                                  : TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                      fontSize: 15,
                                    ),
                            ),
                          ],
                        ),
                        CachedNetworkImage(
                          imageUrl:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScbY9gfGcsuyGNRacrUK-Mx35Uv4fuD7GSWw&s',
                          height: 70,
                          width: 110,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              20.height,
              Container(
                width: size.width,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: type == 3
                      ? Border.all(width: 2, color: AppColor.mainColor)
                      : Border.all(width: 0.3, color: Colors.grey),
                  color: Colors.transparent,
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Radio(
                              value: 3,
                              groupValue: type,
                              onChanged: handle,
                              activeColor: AppColor.mainColor,
                            ),
                            5.width,
                            Text(
                              'Card Payment',
                              style: type == 3
                                  ? TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 15,
                                    )
                                  : TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                      fontSize: 15,
                                    ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            CachedNetworkImage(
                              imageUrl:
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsOhyP14WDo8ezDckSTrgYWpKUQPn-XBn07g&s',
                              height: 70,
                              width: 55,
                              fit: BoxFit.cover,
                            ),
                            5.width,
                            CachedNetworkImage(
                              imageUrl:
                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Mastercard_2019_logo.svg/1200px-Mastercard_2019_logo.svg.png',
                              height: 35,
                              width: 55,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              20.height,
              Container(
                width: size.width,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: type == 4
                      ? Border.all(width: 2, color: AppColor.mainColor)
                      : Border.all(width: 0.3, color: Colors.grey),
                  color: Colors.transparent,
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Radio(
                              value: 4,
                              groupValue: type,
                              onChanged: handle,
                              activeColor: AppColor.mainColor,
                            ),
                            5.width,
                            Text(
                              'PayPal',
                              style: type == 4
                                  ? TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 15,
                                    )
                                  : TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                      fontSize: 15,
                                    ),
                            ),
                          ],
                        ),
                        CachedNetworkImage(
                          imageUrl:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjUU62xsfyJasZjjK5RIOWugQE4NcBe0EeQQ&s',
                          height: 70,
                          width: 110,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              30.height,
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
                      builder: (context) => OrderConfirmationScreen(),
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
                      'Confirm Payment',
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
    );
  }
}
