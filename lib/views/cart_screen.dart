import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/products_controller.dart';
import 'package:flutter_application_1/views/widgets/product_item.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final productController = ProductsController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product"),
      ),
      body: ListView.builder(
          itemCount: productController.lst.length,
          itemBuilder: (context, index) {
            final product = productController.lst[index];
            return ProductItem(
              product: product,
            );
          }),
    );
  }
}
