// features/add_products/presentation/views/add_product_view.dart
import 'package:bag_store_dash_board/features/add_products/presentation/views/widgets/add_product_view_body.dart';
import 'package:flutter/material.dart';

class AddProductView extends StatelessWidget {
  const AddProductView({super.key});
static const routeName='Add-product';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: AddProductViewBody()),
      
    );
  }
}