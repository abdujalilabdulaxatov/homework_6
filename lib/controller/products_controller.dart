import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/product_model.dart';

class ProductsController {
  final List<ProductModel> _lst = [
    ProductModel(
        id: DateTime.now().microsecondsSinceEpoch.toString(),
        title: "Iphone",
        color: Colors.black,
        price: 1000.0),
    ProductModel(
        id: DateTime.now().microsecondsSinceEpoch.toString(),
        title: "Macbook",
        color: Colors.red,
        price: 1200.0),
    ProductModel(
        id: DateTime.now().microsecondsSinceEpoch.toString(),
        title: "Samsung",
        color: Colors.blueAccent,
        price: 800.0),
  ];

  List<ProductModel> get lst {
    return [..._lst];
  }
}
