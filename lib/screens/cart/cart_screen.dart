import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_shopping/screens/profile/address_screen.dart';
import 'package:ecommerce_shopping/utilities/app_data.dart';
import 'package:ecommerce_shopping/utilities/apps_color.dart';
import 'package:ecommerce_shopping/utilities/distance_between.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<int> itemQuantities = [];
  double totalPrice = 0;

  @override
  void initState() {
    super.initState();
    itemQuantities = List.filled(AppData.images.length, 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: AppColor.mainColor.withOpacity(0.7),
        title: Text(
          'Cart',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cart Summary',
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  10.height,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Subtotal', style: TextStyle(fontSize: 15)),
                      Text(
                        '\$441',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            10.height,
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Cart (Total Quantity)',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            10.height,
            Container(
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 4,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  for (int i = 0; i < AppData.images.length; i++) {
                    totalPrice +=
                        double.parse(
                          AppData.productPrice[i].replaceAll('\$', ''),
                        ) *
                        itemQuantities[i];
                  }
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    margin: EdgeInsets.only(bottom: 10),
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              child: CachedNetworkImage(
                                imageUrl: AppData.images[index],
                                width: 100,
                              ),
                            ),
                            10.width,
                            Container(
                              height: 100,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    AppData.productTitles[index],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(AppData.productPrice[index]),
                                  Text(
                                    '100 units left',
                                    style: TextStyle(
                                      color: Colors.redAccent,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        10.height,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Remove',
                              style: TextStyle(
                                color: AppColor.mainColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      itemQuantities[index]++;
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: AppColor.mainColor,
                                    ),
                                    child: Icon(Icons.add, color: Colors.white),
                                  ),
                                ),
                                20.width,
                                Text(
                                  '${itemQuantities[index]}',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.black87,
                                  ),
                                ),
                                20.width,
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (itemQuantities[index] > 0) {
                                        itemQuantities[index]--;
                                      } else {
                                        itemQuantities[index] = 0;
                                      }
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: AppColor.mainColor,
                                    ),
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            10.height,
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddressScreen()),
                );
                print('Check out clicked');
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                margin: EdgeInsets.only(bottom: 25, left: 20, right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AppColor.mainColor,
                ),
                child: Center(
                  child: Text(
                    'Check out  (\$$totalPrice)',
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
    );
  }
}
