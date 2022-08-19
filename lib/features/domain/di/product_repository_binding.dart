import 'package:get/instance_manager.dart';
import 'package:online_shopee/features/domain/repositories/product_repository.dart';
import 'package:online_shopee/features/domain/usecase/datafetch_usecase.dart';

class ProductRepositoryBinding extends Bindings {

  @override
  void dependencies(){
    Get.put<FetchDataUseCase>(FetchDataImpl(productsRepository: Get.find()));
  }

}