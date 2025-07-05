// core/services/subabase_services.dart
import 'dart:io';

import 'package:bag_store_dash_board/core/services/storage_services.dart';
import 'package:bag_store_dash_board/core/utils/constant.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:path/path.dart'as b;

class SubabaseServices implements StoarageService{
  static late  Supabase _supabase;
  static createBuckets(String name)async{
    var buckets=await _supabase.client.storage.listBuckets();
    bool isBucketExist=false;
    for(var bucket in buckets){
      if(bucket.id==bucketName){
        isBucketExist=true;
        break;
      }
    }
    if(!isBucketExist){
    _supabase.client.storage.createBucket(name);

  }}

  static initSupabase()async{
  _supabase=   await Supabase.initialize(
      url: supabaseUrl,
     anonKey:supabaseKey);
  }
  @override
  Future<String> uploadFile(File file, String path)async {
    String fileName=b.basename(file.path);
    //String extensionName=b.extension(file.path);
 var result=  await _supabase.client.storage.from(bagImages).upload("$path/$fileName",
  file);
    return result;
  }
}