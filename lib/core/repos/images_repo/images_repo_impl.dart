// core/repos/images_repo/images_repo_impl.dart
import 'dart:io';

import 'package:bag_store_dash_board/core/errors/failures.dart';
import 'package:bag_store_dash_board/core/repos/images_repo/images_repo.dart';
import 'package:bag_store_dash_board/core/services/storage_services.dart';
import 'package:bag_store_dash_board/core/utils/backend_endpoints.dart';
import 'package:dartz/dartz.dart';

class  ImagesRepoImpl implements ImagesRepo {
  final StoarageService storageServices;

  ImagesRepoImpl({required this.storageServices});
  @override
  Future<Either<Failure,String>> uploadImage(File image)async {
   try {
  String url=await storageServices.uploadFile(image, BackendEndpoints.images) ;
  return right(url);
}  catch (e) {
   print('Upload image error: $e'); 
  return left(ServerFailure('Failed to upload image'));
  
}
   
  }
}