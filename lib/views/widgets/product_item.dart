import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/product_model.dart';

class ProductItem extends StatelessWidget {
  final ProductModel product;

  const ProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: product.color,
      ),
      title: Text(
        product.title,
        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
      ),
      trailing:
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.cart)),
    );
  }
}
