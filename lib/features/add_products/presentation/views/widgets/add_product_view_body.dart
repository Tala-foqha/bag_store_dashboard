// features/add_products/presentation/views/widgets/add_product_view_body.dart
import 'package:bag_store_dash_board/core/widgets/custom_text_field.dart';
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


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          
          children: [
            SizedBox(height:30 ,),
            Form(
              key: formKey,
              autovalidateMode: autovalidateMode,
              child: Column(
                children: [
                  CustomTextField(hintText: ' Enter Bag Name',
                  controller:brandNameController ,
                  ),
                  SizedBox(height: 16,),

                  CustomTextField(hintText: 'Enter Brand Name',
                  controller:brandNameController ,
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
                  SizedBox(height: 16,),
                  CustomTextField(hintText: 'Enter New Price'
                  )






                  
            
                ],
              ),
              
              
              
            ),
          ],
        ),
      ),
    );
  }
}