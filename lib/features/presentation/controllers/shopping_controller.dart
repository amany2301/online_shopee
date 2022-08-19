import 'package:get/state_manager.dart';
import 'package:online_shopee/features/domain/usecase/datafetch_usecase.dart';

import '../../domain/entities/product.dart';

class ShoppingController extends GetxController with StateMixin<RxList<Product>> {

   final FetchDataUseCase _fetchUseCase;
   List products = [].obs;

  ShoppingController({
     FetchDataUseCase fetchDataUseCase,
}): _fetchUseCase =  fetchDataUseCase;


  @override
  void onInit()
  {
    super.onInit();

     fetchProducts();

  }

   // void getProductList() async {
   //   change(products, status: RxStatus.loading());
   //   final _result = await _fetchUseCase.execute();
   //   if (_result.isSuccess) {
   //     products = _result.
   //     if (products.isNotEmpty) {
   //       change(products, status: RxStatus.success());
   //     } else {
   //       change(products, status: RxStatus.empty());
   //     }
   //   } else {
   //     change(products, status: RxStatus.error());
   //   }
   // }


   fetchProducts() async {

     var product = await _fetchUseCase.execute();

     products.assignAll(product);
     // print(products);

  }
}

