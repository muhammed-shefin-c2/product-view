import 'package:flutter/material.dart';

class ProductDiscription extends StatelessWidget {
  ProductDiscription (this.description, {Key? key}) : super(key: key);
  String description;

  @override
  Widget build(BuildContext context) {
    return Text(this.description);
  }
}
