// core/repos/products_repo/products_repo_impl.dart
import 'package:bag_store_dash_board/core/errors/failures.dart';
import 'package:bag_store_dash_board/core/repos/products_repo/products_repo.dart';
import 'package:bag_store_dash_board/core/services/database_services.dart';
import 'package:bag_store_dash_board/core/utils/backend_endpoints.dart';
import 'package:bag_store_dash_board/features/add_products/data/models/add_product_model.dart';
import 'package:bag_store_dash_board/features/add_products/domain/entites/add_product_entity.dart';
import 'package:dartz/dartz.dart';

class ProductsRepoImpl implements ProductsRepo {
  @override
  final DatabaseServices databaseServices;

  ProductsRepoImpl({required this.databaseServices});
  Future<Either<Failure, void>> addProduct(AddProductEntity addProductEntity)async {
    try{
await databaseServices.addData(collectionName: BackendEndpoints.addProduct, data: AddProductModel.fromEntity(addProductEntity).toJson());
return right(null);
    }catch(e){
return left(ServerFailure(e.toString()));
    }
   
  }
}
  
