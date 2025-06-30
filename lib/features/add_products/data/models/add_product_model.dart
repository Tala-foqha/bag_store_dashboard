// features/add_products/data/models/add_product_model.dart
import 'dart:io';

import 'package:bag_store_dash_board/features/add_products/domain/entites/add_product_entity.dart';
import 'package:flutter/widgets.dart';

class AddProductModel {
   final String bagName;
  final String brandName;
  final String description;
  final String price;
  final File image;
   String ?imageUrl;
 final List<String>size;
 final num avgRating=0;
 final num ratingCount=0;

  AddProductModel(  {required this.bagName, 
  required this.brandName, 
  required this.description,
   required this.price, 
   required this.image,
   this.imageUrl,
   required this.size,
  

   

   });
   factory AddProductModel.fromEntity(AddProductEntity addProductEntity){
    return AddProductModel(
   
      bagName: addProductEntity.bagName,
     brandName: addProductEntity.brandName, 
     description: addProductEntity.description,
      price: addProductEntity.price, 
      image: addProductEntity.image,
      imageUrl: addProductEntity.imageUrl, size: addProductEntity.size);
   }
   toJson(){
    return {
    'bagName':bagName,
    'brandName':brandName,
    'description':description,
    'price':price,
    'size':size,
 
  'imageUrl':imageUrl



   };}
}