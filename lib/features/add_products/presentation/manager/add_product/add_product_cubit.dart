// features/add_products/presentation/manager/add_product/add_product_cubit.dart

import 'package:bag_store_dash_board/core/repos/images_repo/images_repo.dart';
import 'package:bag_store_dash_board/core/repos/products_repo/products_repo.dart';
import 'package:bag_store_dash_board/features/add_products/domain/entites/add_product_entity.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_product_state.dart';

class AddProductCubit extends Cubit<AddProductState> {
  AddProductCubit({required this.imagesRepo,required this.productsRepo}) : super(AddProductInitial());
final ImagesRepo imagesRepo;
final ProductsRepo productsRepo;
Future <void>addProduct(AddProductEntity addProductEntity)async{
  emit(AddProductLoading());
  var result=await imagesRepo.uploadImage(addProductEntity.image);
result.fold((failure){
  emit(AddProductFailure(message: failure.message));
}, (url)async{
  addProductEntity.imageUrl=url;
  var result=await productsRepo.addProduct(addProductEntity);
  result.fold((failure){
    emit(AddProductFailure(message: failure.message));
  }, (r){
emit(AddProductSuccess());
print('added products success');
  });

});

}
  
}
