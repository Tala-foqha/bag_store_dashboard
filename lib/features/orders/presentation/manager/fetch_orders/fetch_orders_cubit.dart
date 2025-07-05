// features/orders/presentation/manager/fetch_orders/fetch_orders_cubit.dart
import 'dart:math';

import 'package:bag_store_dash_board/features/orders/domain/entites/order_entity.dart';
import 'package:bag_store_dash_board/features/orders/domain/repos/orders_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'fetch_orders_state.dart';

class FetchOrdersCubit extends Cubit<FetchOrdersState> {
  FetchOrdersCubit(this.ordersRepo) : super(FetchOrdersInitial());
  final OrdersRepo ordersRepo;
  Future<void>fetchOrders()async{
    emit(FetchOrdersLoading());
    final result=await ordersRepo.fetchOrders();
    result.fold((failure)=>emit(FetchOrdersFailure(errorMessage: failure.message)),
     (success)=>emit(FetchOrdersSuccess(orders: success)));
  }

  
}
