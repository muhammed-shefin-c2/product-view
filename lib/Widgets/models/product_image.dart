import "package:flutter/material.dart";

class ProductImage extends StatelessWidget {
  ProductImage (this.image, Key? key) : super(key : key);
  String image;

  @override
  Widget build(BuildContext context) {
    return Image.network(this.image);
  }
}
