import 'package:online_shopee/features/domain/entities/product.dart';

abstract class productRespository
{
  Future<List<dynamic>> fetchData();

}