// features/orders/domain/entites/order_model.dart

import 'package:bag_store_dash_board/features/orders/data/models/order_product_model.dart';
import 'package:bag_store_dash_board/features/orders/data/models/shipping_address_model.dart';

class OrderModel {
  final double totalPrice;
  final String uid;
  final ShippingAddressModel shippingAddressModel;
  final List< OrderProductModel>orderProducts;
  final String paymentMethod;




  OrderModel({required this.totalPrice, required this.uid, required this.shippingAddressModel, required this.orderProducts, required this.paymentMethod});
   toJson()=>{
'totalPrice':totalPrice,
'uid':uid,
'shippingAddressModel':shippingAddressModel.toJson(),
'paymentMethod':paymentMethod,
'orderProducts':orderProducts.map((e)=>e.toJson()).toList()
   };

}