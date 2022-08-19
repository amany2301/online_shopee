import 'package:get/state_manager.dart';

import '../../domain/entities/product.dart';

class CartController extends GetxController {
  // var cartItems = List<Product>().obs;

  List cartItems = [].obs;

  int get count => cartItems.length;
  double get totalPrice => cartItems.fold(0, (sum, item) => sum + item.price);



  addToCart(Product product)
  {
    cartItems.add(product);
  }
}
