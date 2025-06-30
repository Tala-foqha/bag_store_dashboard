// features/add_products/presentation/manager/add_product/add_product_state.dart
part of 'add_product_cubit.dart';

@immutable
abstract class AddProductState {}

class AddProductInitial extends AddProductState {}
class AddProductLoading extends AddProductState{}
class AddProductFailure extends AddProductState{
  final String message;

  AddProductFailure({required this.message});

}
 class AddProductSuccess extends AddProductState{

}

 

