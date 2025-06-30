// features/add_products/presentation/views/widgets/add_products_text_field.dart

import 'package:bag_store_dash_board/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class AddProductsTextField extends StatelessWidget {
  const AddProductsTextField({
    super.key,
    required this.formKey,
    required this.autovalidateMode,
    required this.brandNameController,
    required this.DescriptionController,
    required this.priceController, required this.productCodeController, required this.newPriceController, required this.bagNameController,
  });

  final GlobalKey<FormState> formKey;
  final AutovalidateMode autovalidateMode;
  final TextEditingController brandNameController;
  final TextEditingController DescriptionController;
  final TextEditingController priceController;
  final TextEditingController productCodeController;
    final TextEditingController newPriceController;
        final TextEditingController bagNameController;


  

  @override
  Widget build(BuildContext context) {
    return Form(
      
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(hintText: ' Enter Bag Name',
          controller:bagNameController ,
          ),
          SizedBox(height: 16,),
    
          CustomTextField(hintText: 'Enter Brand Name',
          controller:brandNameController ,
          ),
          SizedBox(height: 16,),
    
            CustomTextField(hintText: 'Enter Product Code',
            
          controller:productCodeController ,
          ),
          SizedBox(height: 16,),
          CustomTextField(hintText: ' Enter Description',
          maxLine: 5,
          controller: DescriptionController,
          ),
          SizedBox(height: 16,),
          CustomTextField(hintText: 'Enter Price',
          controller: priceController,
    
          ),
          
         
    
    
    
    
    
    
          
    
        ],
      ),
      
      
      
    );
  }
}