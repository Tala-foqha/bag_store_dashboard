// features/add_products/domain/entites/add_product_entity.dart
import 'dart:io';

class AddProductEntity {
  final String bagName;
  final String brandName;
  final String description;
  final String price;
  final File image;
  final String ?imageUrl;

  AddProductEntity({
  required this.bagName,
  required this.brandName,
  required this.description,
  required this.price, 
   required this.image,
    this.imageUrl
   });
}