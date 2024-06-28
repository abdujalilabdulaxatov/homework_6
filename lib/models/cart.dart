import 'package:flutter_application_1/models/product_model.dart';

class Cart {
  List<ProductModel> products;
  double totalprice;
  Cart({required this.products, required this.totalprice});
}
