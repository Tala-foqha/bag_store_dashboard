// features/add_products/domain/entites/review_entity.dart
class ReviewEntity {
  final String name;
  final String date;
  final String image;
  final String reviewDescription;
  final num rating;

  ReviewEntity({
   required this.name,
   required this.date,
  required this.image,
  required this.reviewDescription,
   required this.rating});

}