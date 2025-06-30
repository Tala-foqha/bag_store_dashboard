// features/add_products/data/models/review_model.dart
import 'package:bag_store_dash_board/features/add_products/domain/entites/review_entity.dart';

class ReviewModel {
  final String name;
  final String date;
  final String image;
  final String reviewDescription;
  final num rating;

  ReviewModel({
   required this.name,
   required this.date,
  required this.image,
  required this.reviewDescription,
   required this.rating});


factory ReviewModel.fromEntity(ReviewEntity reviewEntuty){
  return ReviewModel(name: reviewEntuty.name,
   date: reviewEntuty.date,
    image: reviewEntuty.image,
     reviewDescription: reviewEntuty.reviewDescription, 
     rating: reviewEntuty.rating);
}

factory ReviewModel.fromJson(Map<String,dynamic>json){
  return ReviewModel(name: json['name'],
   date: json['date'],
    image:json['image'],
     reviewDescription: json['reviewDescription'], 
     rating: json['rating']);
}



   toJson(){
   return {
     'name':name,
     'image':image,
     'date':date,
     'reviewDescription':reviewDescription,
     'rating':rating

   };
   }

}
