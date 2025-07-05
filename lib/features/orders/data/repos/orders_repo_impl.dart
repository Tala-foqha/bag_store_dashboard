// features/orders/data/repos/orders_repo_impl.dart
import 'package:bag_store_dash_board/core/errors/failures.dart';
import 'package:bag_store_dash_board/core/services/database_services.dart';
import 'package:bag_store_dash_board/core/utils/backend_endpoints.dart';
import 'package:bag_store_dash_board/features/orders/data/models/order_model.dart';
import 'package:bag_store_dash_board/features/orders/domain/entites/order_entity.dart';
import 'package:bag_store_dash_board/features/orders/domain/repos/orders_repo.dart';
import 'package:dartz/dartz.dart';

class OrdersRepoImpl implements OrdersRepo {
  final DatabaseServices databaseServices;

  OrdersRepoImpl(this.databaseServices);
  @override
  Future<Either<Failure, List<OrderEntity>>> fetchOrders()async {

try {
  final response=await databaseServices.getData(path: BackendEndpoints.getOrders);
  List<OrderEntity>orders=(response as List<dynamic>).map((e)=>OrderModel.fromJson(e).toEntity()).toList()
  as List<OrderEntity>;
  return Right(orders);
}  catch (e) {
  return Left(ServerFailure('faild to fetch orders'));
}

  }
}