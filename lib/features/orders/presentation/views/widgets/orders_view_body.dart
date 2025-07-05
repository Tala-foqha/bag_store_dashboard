// features/orders/presentation/views/widgets/orders_view_body.dart
import 'package:bag_store_dash_board/features/orders/presentation/views/widgets/filter_section.dart';
import 'package:flutter/material.dart';

class OrdersViewBody extends StatelessWidget {
  const OrdersViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FilterSection()  
      ],
    );
  }
}
