// features/orders/domain/entites/order_entity.dart
import 'package:bag_store_dash_board/features/orders/domain/entites/order_product_entity.dart';
import 'package:bag_store_dash_board/features/orders/domain/entites/shipping_address_entity.dart';

class OrderEntity {
  final double totalPrice;
  final String uid;
  final ShippingAddressEntity shippingAddressEntity;
  final List<OrderProductEntity> orderProducts;
  final String paymentMethod;

  OrderEntity({
    required this.totalPrice,
    required this.uid,
    required this.shippingAddressEntity,
    required this.orderProducts,
    required this.paymentMethod,
  });
}
