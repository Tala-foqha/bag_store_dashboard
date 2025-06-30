// features/add_products/domain/entites/add_product_entity.dart
import 'dart:io';

import 'package:bag_store_dash_board/features/add_products/domain/entites/review_entity.dart';

class AddProductEntity {
  final String bagName;
  final String brandName;
  final String description;
  final String price;
  final File image;
   String ?imageUrl;
    final List<String>size;
 final num avgRating=0;
 final num ratingCount=0;
 final List<ReviewEntity>reviews;

  AddProductEntity(  {
  required this.bagName,
  required this.brandName,
  required this.description,
  required this.price, 
   required this.image,
    this.imageUrl,
    required this.size,
    required this.reviews
   });
}