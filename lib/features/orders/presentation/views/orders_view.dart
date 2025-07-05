// features/orders/presentation/views/orders_view.dart
import 'package:bag_store_dash_board/features/orders/presentation/views/widgets/orders_view_body.dart';
import 'package:flutter/material.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({super.key});
static const routeName='orders-view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Center(child: Text('Orders')),
      ),
      body: OrdersViewBody(),
    );
  }
}