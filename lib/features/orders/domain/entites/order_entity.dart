// features/orders/domain/entites/order_entity.dart

import 'package:bag_store_dash_board/features/orders/data/models/order_product_model.dart';
import 'package:bag_store_dash_board/features/orders/data/models/shipping_address_model.dart';
import 'package:bag_store_dash_board/features/orders/domain/entites/order_product_entity.dart';
import 'package:bag_store_dash_board/features/orders/domain/entites/shipping_address_entity.dart';

class OrderEntity {
  final double totalPrice;
  final String uid;
  final ShippingAddressEntity shippingAddressModel;
  final List< OrderProductEntity>orderProducts;
  final String paymentMethod;




  OrderEntity({required this.totalPrice, required this.uid, required this.shippingAddressModel, required this.orderProducts, required this.paymentMethod});
   
}