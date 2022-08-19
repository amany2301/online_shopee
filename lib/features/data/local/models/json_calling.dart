import 'package:online_shopee/features/domain/entities/product.dart';

class itemModel extends Product
{
  int id;
  String productName;
  String productImage;
  String productDescription;
  num price;

  itemModel({
    this.id,
    this.productName,
    this.productImage,
    this.productDescription,
    this.price,
  }):super(id: id,productName: productName,
      productImage: productImage,productDescription: productDescription,
      price: price);

  itemModel.fromJson(Map<String,dynamic> json)
  {
    id = json['id'] as int;
    productName = json['productName'];
    productImage = json['productImage'];
    productDescription = json['productDescription'];
    price = json['price'];
  }
}



