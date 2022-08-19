import 'package:get/get.dart';
import 'package:online_shopee/features/presentation/controllers/cart_controller.dart';

class cart_binding extends Bindings
{
  void dependencies() {
    Get.lazyPut<CartController>(() => CartController());
  }
}