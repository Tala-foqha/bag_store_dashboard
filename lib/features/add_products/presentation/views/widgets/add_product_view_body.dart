// features/add_products/presentation/views/widgets/add_product_view_body.dart
import 'dart:io';

import 'package:bag_store_dash_board/core/helper_function/build_error_bar.dart';
import 'package:bag_store_dash_board/core/widgets/custom_button.dart';
import 'package:bag_store_dash_board/core/widgets/custom_text_field.dart';
import 'package:bag_store_dash_board/features/add_products/domain/entites/add_product_entity.dart';
import 'package:bag_store_dash_board/features/add_products/presentation/manager/add_product/add_product_cubit.dart';
import 'package:bag_store_dash_board/features/add_products/presentation/views/widgets/add_products_text_field.dart';
import 'package:bag_store_dash_board/features/add_products/presentation/views/widgets/image_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddProductViewBody extends StatefulWidget {
  const AddProductViewBody({super.key});

  @override
  State<AddProductViewBody> createState() => _AddProductViewBodyState();
}

class _AddProductViewBodyState extends State<AddProductViewBody> {
  final GlobalKey<FormState>formKey=GlobalKey<FormState>();
   AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  final TextEditingController brandNameController=TextEditingController();
    final TextEditingController BagController=TextEditingController();

    final TextEditingController DescriptionController=TextEditingController();
        final TextEditingController bagNameController=TextEditingController();

        final TextEditingController priceController=TextEditingController();
                final TextEditingController newPriceController=TextEditingController();
     final TextEditingController productCodeController=TextEditingController();
     File ?image;




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
                newPriceController: newPriceController, bagNameController: bagNameController,),
                SizedBox(height: 16,),
                ImageField(onFileChanged: (image) {
                  this.image=image;

                  },),
                  SizedBox(height: 24,),
                  CustomButton(text: 'Add Product', onPressed: (){
                    if(image!=null){
                      if(formKey.currentState!.validate()){
                        formKey.currentState!.save();

                       AddProductEntity input=AddProductEntity(
                         bagName: BagController.text,
                        brandName: brandNameController.text, 
                        description: DescriptionController.text,
                         price: priceController.text,
                          image: image!);
                          context.read<AddProductCubit>().addProduct(input);
                      }else{
                        autovalidateMode=AutovalidateMode.always;
                        setState(() {
                          
                        });
                      }

                    }else{
                      buildErrorBar(context,'please Select an image');
                    }

                  })
          ],
        ),
      ),
    );
  }
}
