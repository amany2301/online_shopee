import 'package:online_shopee/features/domain/entities/product.dart';

abstract class productRespository
{
 // void updateProduct();
  Future<List<dynamic>> fetchData();

}