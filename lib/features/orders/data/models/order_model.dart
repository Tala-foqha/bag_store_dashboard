// features/orders/data/models/order_model.dart
import 'package:bag_store_dash_board/features/orders/data/models/order_product_model.dart';
import 'package:bag_store_dash_board/features/orders/data/models/shipping_address_model.dart';
import 'package:bag_store_dash_board/features/orders/domain/entites/order_entity.dart';
import 'package:bag_store_dash_board/features/orders/domain/entites/order_product_entity.dart';


class OrderModel {
  final String uId;
  final double totalPrice;

  final ShippingAddressModel shippingAddressModel;
  final List<OrderProductModel> orderProducts;
  final String paymentMethod;

// Constructor
  OrderModel(
      {required this.uId,
      required this.totalPrice,
      required this.shippingAddressModel,
      required this.orderProducts,
      required this.paymentMethod});

  toJson() {
    return {
      "uId": uId,
      "totalPrice": totalPrice,
      "shippingAddressModel": shippingAddressModel.toJson(),
      "orderProducts": orderProducts.map((e) => e.toJson()).toList(),
      "paymentMethod": paymentMethod,
    };
  }


  factory OrderModel.fromJson(Map<String, dynamic> json) {
    return OrderModel(
      uId: json["uId"],
      totalPrice: json["totalPrice"].toDouble(),
      shippingAddressModel:
          ShippingAddressModel.fromJson(json["shippingAddressModel"]),
      orderProducts: (json["orderProducts"] as List)
          .map((e) => OrderProductModel.fromJson(e))
          .toList(),
      paymentMethod: json["paymentMethod"],
    );
  }
  toEntity() => OrderEntity(
  totalPrice: totalPrice,
  uid: uId,
  shippingAddressEntity: shippingAddressModel.toEntity(),
  orderProducts:orderProducts.map((e)=>e.toEntity()).toList(),
  paymentMethod: paymentMethod,
);}