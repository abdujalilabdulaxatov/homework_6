import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/products_controller.dart';
import 'package:flutter_application_1/views/cart_screen.dart';
import 'package:flutter_application_1/views/widgets/product_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final productController = ProductsController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => const CartScreen()));
              },
              icon: const Icon(CupertinoIcons.cart_fill))
        ],
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
