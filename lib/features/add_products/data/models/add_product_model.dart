// features/add_products/data/models/add_product_model.dart
import 'dart:io';

import 'package:bag_store_dash_board/features/add_products/data/models/review_model.dart';
import 'package:bag_store_dash_board/features/add_products/domain/entites/add_product_entity.dart';
import 'package:flutter/widgets.dart';

class AddProductModel {
   final String bagName;
  final String brandName;
  final String description;
  final String price;
  final File image;
  final int sellingCount;
   String ?imageUrl;
 final List<String>size;
 final num avgRating=0;
 final num ratingCount=0;
 final List<ReviewModel>reviews;
 

  AddProductModel(   {required this.bagName, 
  required this.brandName, 
  required this.description,
   required this.price, 
   required this.image,
    this.sellingCount=0,
   this.imageUrl,
   required this.size,
   required this.reviews
  

   

   });
   factory AddProductModel.fromEntity(AddProductEntity addProductEntity){
    return AddProductModel(
   reviews: addProductEntity.reviews.map((e)=>ReviewModel.fromEntity(e)).toList(),
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
    'sellingCount':sellingCount,
 
  'imageUrl':imageUrl



   };}
}