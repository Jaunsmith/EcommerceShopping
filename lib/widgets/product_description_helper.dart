import 'package:ecommerce_shopping/utilities/distance_between.dart';
import 'package:flutter/material.dart';

class ProductDescriptionHelper extends StatefulWidget {
  const ProductDescriptionHelper({super.key, required this.text});

  final String text;

  @override
  State<ProductDescriptionHelper> createState() =>
      _ProductDescriptionHelperState();
}

class _ProductDescriptionHelperState extends State<ProductDescriptionHelper> {
  final int textHeight = 150;
  bool isExpandText = false;

  @override
  Widget build(BuildContext context) {
    final expandText = widget.text.length > textHeight;
    String displayText = isExpandText
        ? widget.text
        : (expandText
              ? '${widget.text.substring(0, textHeight)}...'
              : widget.text);
    return Container(
      child: Column(
        children: [
          Text(
            displayText,
            style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.justify,
          ),
          10.height,
          expandText
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      isExpandText = !isExpandText;
                    });
                  },
                  child: Row(
                    children: [
                      Text(isExpandText ? 'Show Less' : 'Show More'),
                      5.width,
                      Icon(
                        isExpandText
                            ? Icons.arrow_drop_up
                            : Icons.arrow_drop_down,
                      ),
                    ],
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
