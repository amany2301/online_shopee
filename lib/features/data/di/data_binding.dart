import 'package:get/instance_manager.dart';
import 'package:online_shopee/features/data/local/dataresources/productdatafromjson.dart';
import 'package:online_shopee/features/data/repositories/product_repository_impl.dart';
import 'package:online_shopee/features/domain/repositories/product_repository.dart';

class ProductDataBinding extends Bindings{
  @override
  void dependencies() {

    Get.put<ProductDataFromJson>(ProductDataFromJsonImpl());
    Get.put<productRespository>(ProductRepositoryImpl(productFromJson: Get.find()));

  }
}