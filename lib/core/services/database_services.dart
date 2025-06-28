// core/services/database_services.dart

abstract class DatabaseServices{

  Future<void>addData({required String collectionName,required Map<String,dynamic>data ,String? documentId});
  Future<Map<String,dynamic>>getUserData({required String path,required String documentId});
 }