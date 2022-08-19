
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:online_shopee/features/data/repositories/product_repository_impl.dart';
import 'package:online_shopee/features/domain/repositories/product_repository.dart';

import '../entities/product.dart';
import 'base_use_case.dart';


abstract class FetchDataUseCase
{
  Future<dynamic> execute();
}


class FetchDataImpl implements FetchDataUseCase {

  final productRespository _repository;

  FetchDataImpl({
     productRespository productsRepository,
  }) : _repository = productsRepository;


  @override
  Future<dynamic> execute() async {

   return _repository.fetchData();

   // return _repository.updateProduct();
  }

  // Future<dynamic> execute(){
  //
  //   return homeRepo().fetchData();
  // }

}