// core/services/firestore_services.dart
import 'package:bag_store_dash_board/core/services/database_services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreServices implements  DatabaseServices{
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<void> addData({required String collectionName, required Map<String, dynamic> data,String ?documentId})async {
    if (documentId!=null) {
      firestore.collection(collectionName).doc(documentId).set(data);
      
    }else{
     await firestore.collection(collectionName).add(data);
    
  }}
  
  @override
  Future<Map<String,dynamic>> getUserData({required String path, required String documentId})async {
 var data=await firestore.collection(path).doc(documentId).get();

 return data.data() as Map<String,dynamic>;
  }



}


