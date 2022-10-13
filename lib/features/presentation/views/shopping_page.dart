import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:online_shopee/controllers/cart_controller.dart';
//import 'package:online_shopee/controllers/shopping_controller.dart';

import '../controllers/cart_controller.dart';
import '../controllers/shopping_controller.dart';

class ShoppingPage extends StatelessWidget {

    final shoppingController = Get.find<ShoppingController>();
    final cartController = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Obx(()
                 {
                  return ListView.builder(
                    itemCount: shoppingController.products.length,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: const EdgeInsets.all(12),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${shoppingController.products[index].productName}',
                                        style: TextStyle(fontSize: 24),
                                      ),
                                      Text(
                                          '${shoppingController.products[index].productDescription}'),
                                    ],
                                  ),
                                  Text('\$${shoppingController.products[index].price}',
                                      style: TextStyle(fontSize: 24)),
                                ],
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  cartController
                                      .addToCart(shoppingController.products[index]);
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blue, // background
                                  onPrimary: Colors.yellow, // foreground
                                ),
                                //color: Colors.blue,
                                //textColor: Colors.white,
                                child: Text('Add to Cart'),
                              ),
                            /*
                              Obx(() => IconButton(
                                    icon: shoppingController
                                            .products[index].isFavorite.value
                                        ? Icon(Icons.check_box_rounded)
                                        : Icon(Icons
                                            .check_box_outline_blank_outlined),
                                    onPressed: () {
                                      shoppingController.products[index].isFavorite
                                          .toggle();
                                    },
                                  ))
                              */

                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            Obx((){
              return Text(
                'Total amount: \$ ${cartController.totalPrice}',
                style: TextStyle(fontSize: 32, color: Colors.white),
              );
            }),
            SizedBox(height: 100),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Get.toNamed('/CartPage');
        },
        backgroundColor: Colors.amber,
        icon: Icon(
          Icons.add_shopping_cart_rounded,
          color: Colors.black,
        ),
        label: GetX<CartController>(builder: (controller) {
          return Text(
            controller.count.toString(),
            style: TextStyle(color: Colors.black, fontSize: 24),
          );
        }),
      ),
    );
  }
}
