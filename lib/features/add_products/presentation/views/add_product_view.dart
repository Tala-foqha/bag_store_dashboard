// features/add_products/presentation/views/add_product_view.dart
import 'package:bag_store_dash_board/core/repos/images_repo/images_repo.dart';
import 'package:bag_store_dash_board/core/repos/images_repo/images_repo_impl.dart';
import 'package:bag_store_dash_board/core/repos/products_repo/products_repo.dart';
import 'package:bag_store_dash_board/core/repos/products_repo/products_repo_impl.dart';
import 'package:bag_store_dash_board/core/services/database_services.dart';
import 'package:bag_store_dash_board/core/services/firestore_services.dart';
import 'package:bag_store_dash_board/core/services/get_it_services.dart';
import 'package:bag_store_dash_board/core/services/storage_services.dart';
import 'package:bag_store_dash_board/core/services/subabase_services.dart';
import 'package:bag_store_dash_board/features/add_products/presentation/manager/add_product/add_product_cubit.dart';
import 'package:bag_store_dash_board/features/add_products/presentation/views/widgets/add_product_view_body.dart';
import 'package:bag_store_dash_board/features/add_products/presentation/views/widgets/add_products_view_body_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddProductView extends StatelessWidget {
  const AddProductView({super.key});
  static const routeName = 'Add-product';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: BlocProvider(
          create: (context) => AddProductCubit(imagesRepo: getIt.get<ImagesRepo>(), productsRepo: getIt.get<ProductsRepo>()),
            
          child: AddProductsViewBodyBlocBuilder(),
        ),
      ),
    );
  }
}