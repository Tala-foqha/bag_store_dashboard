// core/repos/products_repo/products_repo.dart
import 'package:bag_store_dash_board/features/add_products/domain/entites/add_product_entity.dart';

abstract class ProductsRepo {
 Future<void>addProduct(AddProductEntity addProductEntity);
 
}