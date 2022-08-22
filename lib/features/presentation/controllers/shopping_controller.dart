import 'package:get/state_manager.dart';
import 'package:online_shopee/features/domain/usecase/datafetch_usecase.dart';

import '../../domain/entities/product.dart';

class ShoppingController extends GetxController with StateMixin<RxList<Product>> {

   final FetchDataUseCase _fetchUseCase;
   List products = [].obs;

  ShoppingController({
     FetchDataUseCase fetchDataUseCase,
}): _fetchUseCase =  fetchDataUseCase;

   var productList = <Product>[];
   var lastPos = -1.obs;



  @override
  void onInit()
  {
    super.onInit();
    //getProductList();
    fetchProducts();

  }

   // void getProductList() async {
   //   change(productList, status: RxStatus.loading());
   //   final _result = await _fetchUseCase.getData();
   //   if (_result.isSuccess) {
   //     productList = _result.productList;
   //     if (productList.isNotEmpty) {
   //       change(productList, status: RxStatus.success());
   //     } else {
   //       change(productList, status: RxStatus.empty());
   //     }
   //   } else {
   //     change(productList, status: RxStatus.error());
   //   }
   // }


   fetchProducts() async {

     var product = await _fetchUseCase.execute();

     products.assignAll(product);
     // print(products);

  }
}

