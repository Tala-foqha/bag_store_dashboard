// features/add_products/presentation/views/widgets/add_products_view_body_bloc_builder.dart
import 'package:bag_store_dash_board/core/helper_function/build_error_bar.dart';
import 'package:bag_store_dash_board/features/add_products/presentation/manager/add_product/add_product_cubit.dart';
import 'package:bag_store_dash_board/features/add_products/presentation/views/widgets/add_product_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class AddProductsViewBodyBlocBuilder extends StatelessWidget {
  const AddProductsViewBodyBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<AddProductCubit, AddProductState>(
      listener: (context, state) {
        if(state is AddProductFailure){
          return buildErrorBar(context, state.message);
        }
        if(state is AddProductSuccess){
          return buildErrorBar(context, 'Product added Successfully');

        }
      
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is AddProductLoading,
          child: AddProductViewBody());
      },
    );
  }
}
