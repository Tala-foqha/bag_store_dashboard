// features/orders/presentation/views/widgets/orders_item_list_view.dart
 import 'package:bag_store_dash_board/features/orders/domain/entites/order_entity.dart';
import 'package:bag_store_dash_board/features/orders/presentation/views/widgets/order_item_model.dart';
import 'package:flutter/material.dart';

class OrdersItemListView extends StatelessWidget {
  const OrdersItemListView({super.key, required this.orders});
final List<OrderEntity>orders;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
       shrinkWrap: true, // ✅ هذا يجعل ListView تأخذ فقط المساحة التي تحتاجها
  physics: NeverScrollableScrollPhysics(), 
      itemCount: orders.length,
      itemBuilder: (context,index){
      return Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: OrderItemWidget(orderEntity: orders[index]),
      );
    });
  }
}