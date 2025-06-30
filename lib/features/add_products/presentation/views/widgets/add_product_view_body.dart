// features/add_products/presentation/views/widgets/add_product_view_body.dart
import 'dart:io';

import 'package:bag_store_dash_board/core/helper_function/build_error_bar.dart';
import 'package:bag_store_dash_board/core/utils/app_styles.dart';
import 'package:bag_store_dash_board/core/widgets/custom_button.dart';
import 'package:bag_store_dash_board/core/widgets/custom_text_field.dart';
import 'package:bag_store_dash_board/core/widgets/customer_checked_box.dart';
import 'package:bag_store_dash_board/features/add_products/domain/entites/add_product_entity.dart';
import 'package:bag_store_dash_board/features/add_products/presentation/manager/add_product/add_product_cubit.dart';
import 'package:bag_store_dash_board/features/add_products/presentation/views/is_featured_checked_box.dart';
import 'package:bag_store_dash_board/features/add_products/presentation/views/widgets/add_products_text_field.dart';
import 'package:bag_store_dash_board/features/add_products/presentation/views/widgets/avilable_size.dart';
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
bool isFeatured=false;
bool isSmall=false;
bool isLarge=false;
bool isMeduim=false;
List<String>SelectSize=[];



  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          
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
                  SizedBox(height: 16,),
                  IsFeaturesCheckedBox(onChange: (bool value) { 
                    isFeatured=value;
                    setState(() {
                      
                    });

                   },),
                  SizedBox(height: 16,),

                  Text('Avilable Sizes',style: AppStyles.meduim16.copyWith(
                    color: Colors.black
                  ),),
                  SizedBox(height: 10,),
                  Column(
                    children: [
                      AvilableSize(onChange: (value){
                        isSmall=value;
                        setState(() {
                          
                        });
                      }, text: 'small'),
                      SizedBox(height: 5,),

                       AvilableSize(onChange: (value){
                        isMeduim=value;
                        setState(() {
                          
                        });
                      }, text: 'Meduim'),
                       SizedBox(height: 5,),

                       AvilableSize(onChange: (value){
                        isLarge=value;
                        setState(() {
                          
                        });
                      }, text: 'Large'),
                     



                    ],

                  ),


                  SizedBox(height: 24,),
                  CustomButton(text: 'Add Product', onPressed: (){
                    if(image!=null){
                      if(formKey.currentState!.validate()){
                        formKey.currentState!.save();
                        geSize();

                       AddProductEntity input=AddProductEntity(
                        reviews: [],
                         bagName: BagController.text,
                        brandName: brandNameController.text, 
                        description: DescriptionController.text,
                         price: priceController.text,
                          image: image!, size: SelectSize);
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
  geSize(){
    if(isSmall) SelectSize.add('small');
     if(isMeduim) SelectSize.add('Meduim');
     if(isLarge)SelectSize.add('Large');
  }
}
