import 'package:ecommerce_shopping/utilities/apps_color.dart';
import 'package:ecommerce_shopping/utilities/distance_between.dart';
import 'package:ecommerce_shopping/widgets/product_description_helper.dart';
import 'package:flutter/material.dart';

class AllDetails extends StatelessWidget {
  const AllDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 5),
            height: 80,
            width: double.maxFinite,
            color: AppColor.mainColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: Text(
                    'Product Details',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
          10.height,
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                height: 800,
                child: Stack(
                  children: [
                    Container(
                      height: 350,
                      width: double.maxFinite,
                      child: Image.asset(
                        'assets/images/discount.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 300,
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Container(
                        padding: EdgeInsets.only(top: 10, right: 15, left: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          color: Colors.redAccent,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Product Name '),
                                Text('Product Price '),
                              ],
                            ),
                            20.height,
                            Text(
                              'Description',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            10.height,
                            ProductDescriptionHelper(text: 'My details'),
                            20.height,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 20,
                                    ),
                                    Text(
                                      'Number of reviews',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '100(Items sold)',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '150(In Stock)',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
        margin: EdgeInsets.only(top: 10, bottom: 10),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                print('Home tapped');
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 7.5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: AppColor.mainColor, width: 1.5),
                ),
                child: Icon(Icons.home, color: AppColor.mainColor),
              ),
            ),
            10.width,
            GestureDetector(
              onTap: () {
                print('call tapped');
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 7.5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: AppColor.mainColor, width: 1.5),
                ),
                child: Icon(Icons.phone, color: AppColor.mainColor),
              ),
            ),
            10.width,
            Expanded(
              child: GestureDetector(
                onTap: () {
                  print('Add to cart tapped');
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: AppColor.mainColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                        size: 25,
                      ),
                      40.width,
                      Text(
                        'Add to Cart',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
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
