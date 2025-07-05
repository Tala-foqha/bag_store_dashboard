// features/orders/data/models/order_product_model.dart
import 'package:bag_store_dash_board/features/orders/domain/entites/order_product_entity.dart';

class OrderProductModel {
  final String code;
  final String name;
  final double price;
  final int quantity;
  final String imageUrl;

  OrderProductModel(
      {required this.code,
      required this.name,
      required this.price,
      required this.quantity,
      required this.imageUrl});

  toJson() {
    return {
      "code": code,
      "name": name,
      "price": price,
      "quantity": quantity,
      "imageUrl": imageUrl,
    };
  }

  static OrderProductModel fromJson(Map<String, dynamic> json) {
    return OrderProductModel(
      code: json["code"],
      name: json["name"],
      price: json["price"].toDouble(),
      quantity: json["quantity"],
      imageUrl: json["imageUrl"],
    );
  }
  toEntity(){
    return OrderProductEntity(
      name: name,
     code: code,
      imageUrl: imageUrl, 
      price: price, 
      quantity: quantity);
  }
}