// features/add_products/presentation/views/widgets/add_product_view_body.dart
import 'dart:io';

import 'package:bag_store_dash_board/core/widgets/custom_text_field.dart';
import 'package:bag_store_dash_board/features/add_products/presentation/views/widgets/add_products_text_field.dart';
import 'package:bag_store_dash_board/features/add_products/presentation/views/widgets/image_field.dart';
import 'package:flutter/material.dart';

class AddProductViewBody extends StatefulWidget {
  const AddProductViewBody({super.key});

  @override
  State<AddProductViewBody> createState() => _AddProductViewBodyState();
}

class _AddProductViewBodyState extends State<AddProductViewBody> {
  final GlobalKey<FormState>formKey=GlobalKey<FormState>();
  final AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  final TextEditingController brandNameController=TextEditingController();
    final TextEditingController BagController=TextEditingController();

    final TextEditingController DescriptionController=TextEditingController();
        final TextEditingController priceController=TextEditingController();
                final TextEditingController newPriceController=TextEditingController();
     final TextEditingController productCodeController=TextEditingController();




  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          
          children: [
            SizedBox(height:30 ,),
            AddProductsTextField(formKey: formKey,
             autovalidateMode: autovalidateMode, 
             brandNameController: brandNameController,
              DescriptionController: DescriptionController,
               priceController: priceController,
                productCodeController: productCodeController,
                newPriceController: newPriceController,),
                SizedBox(height: 16,),
                ImageField(onFileChanged: (image) {
                  
                  },)
          ],
        ),
      ),
    );
  }
}
