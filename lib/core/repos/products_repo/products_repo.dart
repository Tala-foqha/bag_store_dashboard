// core/repos/products_repo/products_repo.dart
import 'package:bag_store_dash_board/core/errors/failures.dart';
import 'package:bag_store_dash_board/features/add_products/domain/entites/add_product_entity.dart';
import 'package:dartz/dartz.dart';

abstract class ProductsRepo {
 Future<Either<Failure,void>>addProduct(AddProductEntity addProductEntity);
 
}