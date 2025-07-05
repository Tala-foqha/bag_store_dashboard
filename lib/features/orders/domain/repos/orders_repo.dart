// features/orders/domain/repos/orders_repo.dart
import 'package:bag_store_dash_board/core/errors/failures.dart';
import 'package:bag_store_dash_board/features/orders/domain/entites/order_entity.dart';
import 'package:dartz/dartz.dart';

abstract class OrdersRepo {
  Future<Either<Failure,List<OrderEntity>>>fetchOrders();
}