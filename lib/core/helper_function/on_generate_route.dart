// core/helper_function/on_generate_route.dart

import 'package:bag_store_dash_board/features/add_products/presentation/views/add_product_view.dart';
import 'package:bag_store_dash_board/features/dash_board/presentation/views/dash_board_view.dart';
import 'package:flutter/material.dart';


Route<dynamic>onGenerateRoute(RouteSettings settings){
  switch(settings.name){
   case DashBoardView.routeName:
   return MaterialPageRoute(builder: (context)=>DashBoardView());

   case AddProductView.routeName:
   return MaterialPageRoute(builder: (context)=>AddProductView());


   default: 
   return MaterialPageRoute(builder: (context)=>Scaffold());
  }
}