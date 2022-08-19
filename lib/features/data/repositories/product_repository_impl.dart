

import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:online_shopee/features/data/local/dataresources/productdatafromjson.dart';
import 'package:online_shopee/features/domain/entities/product.dart';
import 'package:online_shopee/features/domain/repositories/product_repository.dart';

import '../local/models/json_calling.dart';

class ProductRepositoryImpl implements productRespository
{
  ProductDataFromJson _productFromJson;


  ProductRepositoryImpl({
    ProductDataFromJson productFromJson, productDataFromJson
}): _productFromJson = productFromJson;

  // @override
  // Future updateProduct() async
  // {
  // // _productFromJson.execute();
  //   return await _productFromJson.execute();
  //
  // }

  Future<List<dynamic>> fetchData() async {

    final catalogJson = await _productFromJson.execute();

  // await rootBundle.loadString("assets/files/product.json");
  // final response = await http.get(Uri.parse(url));
  // final catalogJson = response.body;

  final decodedData = jsonDecode(catalogJson);
    // print(List.from(decodedData)
    //     .map<itemModel>((item) => itemModel.fromJson(item)).toList());
   return List.from(decodedData)
      .map<itemModel>((item) => itemModel.fromJson(item)).toList();
}
}