// features/orders/presentation/manager/fetch_orders/fetch_orders_state.dart
part of 'fetch_orders_cubit.dart';

@immutable
abstract class FetchOrdersState {}

class FetchOrdersInitial extends FetchOrdersState {}
class FetchOrdersLoading extends FetchOrdersState {}
class FetchOrdersSuccess extends FetchOrdersState {
  final List<OrderEntity>orders;

  FetchOrdersSuccess({required this.orders});
}
class FetchOrdersFailure extends FetchOrdersState {
  final String errorMessage;

  FetchOrdersFailure({required this.errorMessage});
}





