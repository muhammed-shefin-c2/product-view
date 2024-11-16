import 'package:flutter/material.dart';

class ProductTitle extends StatelessWidget {
  ProductTitle (this.title, {Key? key}) : super(key: key);
  String title;

  @override
  Widget build(BuildContext context) {
    return Text(this.title);
  }
}
