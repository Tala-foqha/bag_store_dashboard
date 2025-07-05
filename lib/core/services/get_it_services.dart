// core/services/get_it_services.dart

import 'package:bag_store_dash_board/core/repos/images_repo/images_repo.dart' show ImagesRepo;
import 'package:bag_store_dash_board/core/repos/images_repo/images_repo_impl.dart';
import 'package:bag_store_dash_board/core/repos/products_repo/products_repo.dart';
import 'package:bag_store_dash_board/core/repos/products_repo/products_repo_impl.dart';
import 'package:bag_store_dash_board/core/services/database_services.dart';
import 'package:bag_store_dash_board/core/services/firestore_services.dart';
import 'package:bag_store_dash_board/core/services/storage_services.dart';
import 'package:bag_store_dash_board/core/services/subabase_services.dart';
import 'package:bag_store_dash_board/features/orders/data/repos/orders_repo_impl.dart';
import 'package:bag_store_dash_board/features/orders/domain/repos/orders_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {

  getIt.registerSingleton<StoarageService>(SubabaseServices());
  getIt.registerSingleton<DatabaseServices>(FirestoreServices());
getIt.registerSingleton<ImagesRepo>(
 ImagesRepoImpl(storageServices: getIt.get<StoarageService>()));
 getIt.registerSingleton<ProductsRepo>(ProductsRepoImpl( databaseServices:  getIt.get<DatabaseServices>(), storageServices:  getIt.get<StoarageService>()));
  getIt.registerSingleton<OrdersRepo>(
    OrdersRepoImpl(
  getIt.get<DatabaseServices>(),));

 
}