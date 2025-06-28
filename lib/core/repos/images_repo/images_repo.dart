// core/repos/images_repo/images_repo.dart
import 'dart:io';

import 'package:bag_store_dash_board/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class ImagesRepo {
  Future<Either<Failure,String>>uploadImage(File image);

  

}