// features/dash_board/presentation/views/widgets/dash_board_view_body.dart
import 'package:bag_store_dash_board/core/widgets/custom_button.dart';
import 'package:bag_store_dash_board/features/add_products/presentation/views/add_product_view.dart';
import 'package:flutter/material.dart';

class DashBoardViewBody extends StatelessWidget {
  const DashBoardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
          CustomButton(text: 'Add Product', onPressed: 
          (){
            Navigator.pushNamed(context, AddProductView.routeName);
          })
        ],
      ),
    );
  }
}