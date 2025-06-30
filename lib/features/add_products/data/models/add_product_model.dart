// features/add_products/data/models/add_product_model.dart
import 'dart:io';

import 'package:bag_store_dash_board/features/add_products/domain/entites/add_product_entity.dart';

class AddProductModel {
   final String bagName;
  final String brandName;
  final String description;
  final String price;
  final File image;
   String ?imageUrl;

  AddProductModel({required this.bagName, 
  required this.brandName, 
  required this.description,
   required this.price, 
   required this.image,
   this.imageUrl
   });
   factory AddProductModel.fromEntity(AddProductEntity addProductEntity){
    return AddProductModel(
      bagName: addProductEntity.bagName,
     brandName: addProductEntity.brandName, 
     description: addProductEntity.description,
      price: addProductEntity.price, 
      image: addProductEntity.image,
      imageUrl: addProductEntity.imageUrl);
   }
   toJson(){
    return {
    'bagName':bagName,
    'brandName':brandName,
    'description':description,
    'price':price,
 'image':image,
  'imageUrl':imageUrl



   };}
}