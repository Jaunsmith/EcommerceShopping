import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_shopping/utilities/app_data.dart';
import 'package:ecommerce_shopping/utilities/apps_color.dart';
import 'package:ecommerce_shopping/utilities/distance_between.dart';
import 'package:ecommerce_shopping/widgets/product_description_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key, required this.index});

  final int index;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  final List<String> listSizes = ['S', 'M', 'L', 'XL', 'XXL'];
  final List<Color> productColor = [
    Colors.green,
    Colors.yellowAccent,
    Colors.white,
    Colors.black,
    Colors.purple,
  ];
  int selectedSizeIndex = 0;
  bool isSelected = true;
  int colorSelectedSizeIndex = 0;
  bool colorSelected = true;
  int quantity = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text(
          'Product Overview',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: AppColor.mainColor,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 300,
                    width: double.maxFinite,
                    child: CachedNetworkImage(
                      imageUrl: AppData.images[widget.index],
                      fit: BoxFit.cover,
                      placeholder: (context, url) =>
                          CircularProgressIndicator.adaptive(
                            backgroundColor: AppColor.mainColor,
                          ),
                      errorWidget: (context, url, error) =>
                          (Icon(Icons.error, color: Colors.red, size: 25)),
                    ),
                  ),
                  Container(
                    constraints: BoxConstraints(
                      minHeight:
                          MediaQuery.of(context).size.height -
                          80 - // App bar height
                          80 - // Bottom nav height
                          300, // images height
                    ),
                    padding: EdgeInsets.only(
                      top: 10,
                      right: 15,
                      left: 15,
                      bottom: 15,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      color: Colors.white70,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              AppData.productTitles[widget.index],
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              AppData.productPrice[widget.index],
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        15.height,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(width: 5),
                                Text(
                                  '250',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  '(Number of reviews)',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              child: RatingBar.builder(
                                initialRating: 4.5,
                                minRating: 1,
                                ignoreGestures: true,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 25,
                                itemPadding: EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                ),
                                itemBuilder: (context, index) => Icon(
                                  Icons.star,
                                  color: Colors.black,
                                  size: 12,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            ),
                          ],
                        ),
                        20.height,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '100(Items sold)',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '150(In Stock)',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        10.height,
                        Text(
                          'Rate The product',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          child: RatingBar.builder(
                            initialRating: 0,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 25,
                            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, index) =>
                                Icon(Icons.star, color: Colors.black, size: 12),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                        ),
                        10.height,
                        Row(
                          children: [
                            Text(
                              'Size:  ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            5.width,
                            Row(
                              children: List.generate(listSizes.length, (
                                index,
                              ) {
                                bool isSelected = selectedSizeIndex == index;
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedSizeIndex = index;
                                    });
                                  },
                                  child: Container(
                                    margin: EdgeInsets.symmetric(horizontal: 5),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 15,
                                      vertical: 8,
                                    ),
                                    decoration: BoxDecoration(
                                      color: isSelected
                                          ? AppColor.mainColor
                                          : Colors.white,
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                        color: AppColor.mainColor,
                                        width: 1.5,
                                      ),
                                    ),
                                    child: Text(
                                      listSizes[index],
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: isSelected
                                            ? Colors.white
                                            : AppColor.mainColor,
                                      ),
                                    ),
                                  ),
                                );
                              }),
                            ),
                          ],
                        ),
                        10.height,
                        Row(
                          children: [
                            Text(
                              'Color:  ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            5.width,
                            Row(
                              children: List.generate(productColor.length, (
                                index,
                              ) {
                                bool colorSelected =
                                    colorSelectedSizeIndex == index;
                                return GestureDetector(
                                  onTap: () {
                                    print(
                                      'The colors picked is ${productColor[index]}',
                                    );
                                    setState(() {
                                      colorSelectedSizeIndex = index;
                                    });
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    margin: EdgeInsets.symmetric(horizontal: 5),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 15,
                                      vertical: 8,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: productColor[index],
                                      border: colorSelected
                                          ? Border.all(
                                              color: AppColor.mainColor,
                                              width: 2,
                                            )
                                          : null,
                                    ),
                                  ),
                                );
                              }),
                            ),
                          ],
                        ),
                        10.height,
                        Text(
                          'Description',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        10.height,
                        ProductDescriptionHelper(
                          text: AppData.description[widget.index],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
            Container(
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        quantity++;
                      });
                    },
                    child: Icon(Icons.add),
                  ),
                  3.width,
                  Text(
                    '$quantity',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: AppColor.mainColor,
                    ),
                  ),
                  3.width,
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (quantity > 0) {
                          quantity--;
                        } else {
                          quantity = 0;
                        }
                      });
                    },
                    child: Icon(Icons.remove),
                  ),
                ],
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
                    mainAxisAlignment: MainAxisAlignment.start,
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
                          fontSize: 20,
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
