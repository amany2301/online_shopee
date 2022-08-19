import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_shopee/features/data/di/data_binding.dart';
import 'package:online_shopee/features/domain/di/product_repository_binding.dart';
import 'package:online_shopee/features/presentation/binding/cart_binding.dart';
//import 'package:online_shopee/controllers/shopping_binding.dart';
//import 'package:online_shopee/views/shopping_page.dart';

import 'features/presentation/binding/shopping_binding.dart';
import 'features/presentation/views/shopping_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
       //visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
        getPages: [
          GetPage(
            name: '/',
            page: () => ShoppingPage(),
            bindings:[ShoppingBinding(),cart_binding(),ProductDataBinding(),ProductRepositoryBinding()],
          ),
        ],
    );
  }
}
