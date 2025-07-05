// features/orders/presentation/views/widgets/orders_view_body.dart
import 'package:bag_store_dash_board/core/helper_function/get_dummy_order_data.dart';
import 'package:bag_store_dash_board/features/orders/presentation/views/widgets/filter_section.dart';
import 'package:bag_store_dash_board/features/orders/presentation/views/widgets/orders_item_list_view.dart';
import 'package:flutter/material.dart';

class OrdersViewBody extends StatelessWidget {
  const OrdersViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 24,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: FilterSection(),
          )  ,
          SizedBox(height: 16,),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
            child: OrdersItemListView(orders: [getDummyOrder(),
            getDummyOrder(),
            getDummyOrder()
                  
            ]),
          )
        ],
      ),
    );
  }
}
