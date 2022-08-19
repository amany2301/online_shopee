import 'package:get/get.dart';

import '../controllers/shopping_controller.dart';

//import '../../../controllers/shopping_controller.dart';

// import 'package:online_shopee/presentation/controllers/shopping_controller.dart';

class ShoppingBinding extends Bindings {

  @override

    void dependencies() {

    Get.lazyPut<ShoppingController>(() => ShoppingController(fetchDataUseCase: Get.find()));
      // Get.put<ShoppingController>(ShoppingController());
    }

}