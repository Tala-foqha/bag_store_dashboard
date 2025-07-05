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
  Future<dynamic> getData({required String path,  String ?documentId,Map<String,dynamic>?query})async {
    if(documentId!=null){
 var data=await firestore.collection(path).doc(documentId).get();

 return data.data() as Map<String,dynamic>;
  }else{
    Query<Map<String,dynamic>> data=await firestore.collection(path);
    if(query!=null){
      if(query['orderBy'] !=null){
        var orderByField=query['orderBy'];
        var descending=query['descending'];
        data=data.orderBy(orderByField,descending:descending );
      }if(query['limit']!=null){
        var limit=query['limit'];
        data=data.limit(limit);
      }
    }
   var result=await data.get() ;
    return result.docs.map((e)=>e.data()).toList();

  }
  }


}


