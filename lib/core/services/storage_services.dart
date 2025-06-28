// core/services/storage_services.dart
import 'dart:io';

abstract class StoarageService {
  Future<String> uploadFile(File file , String path);
}