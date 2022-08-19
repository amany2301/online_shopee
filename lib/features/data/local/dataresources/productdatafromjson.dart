
import 'package:flutter/services.dart';
import 'package:online_shopee/features/domain/entities/product.dart';

abstract class ProductDataFromJson
{
  // void updateProductData();
  Future<dynamic> execute();
}

class ProductDataFromJsonImpl implements ProductDataFromJson
{

  @override
  Future<dynamic> execute() async {
    {
      return await rootBundle.loadString("assets/files/product.json");
    }

  }

  // @override
  // void updateProductData() {
  // }


}

