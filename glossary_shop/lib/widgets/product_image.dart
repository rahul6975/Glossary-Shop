import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  final String image;
  final double width;
  final double height;
  final double padding;

  ProductImage(
    this.image, {
    required this.padding,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return this.image == null
        ? SizedBox.shrink()
        : Padding(
            padding: EdgeInsets.all(this.padding),
            child: Image.asset(
              this.image,
              height: this.height,
              width: this.width,
              fit: BoxFit.contain,
            ),
          );
  }
}
