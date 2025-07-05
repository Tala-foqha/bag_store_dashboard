// features/orders/presentation/views/widgets/orders_view_body.dart
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

class FilterSection extends StatelessWidget {
  const FilterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text('Filter'),
      Icon(Icons.filter)
    ],);
  }
}