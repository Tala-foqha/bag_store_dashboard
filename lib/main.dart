// main.dart
import 'package:bag_store_dash_board/core/helper_function/on_generate_route.dart';
import 'package:bag_store_dash_board/core/services/custom_bloc_observer.dart';
import 'package:bag_store_dash_board/core/services/get_it_services.dart';
import 'package:bag_store_dash_board/core/services/subabase_services.dart';
import 'package:bag_store_dash_board/core/utils/constant.dart';
import 'package:bag_store_dash_board/features/dash_board/presentation/views/dash_board_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main()async {
    WidgetsFlutterBinding.ensureInitialized();
   await SubabaseServices.initSupabase();
   await SubabaseServices.createBuckets(bucketName);
    Bloc.observer=CustomBlocObserver();
  await Firebase.initializeApp();
  runApp(const BagStoreDashBoard());
  setup();
}
class BagStoreDashBoard extends StatelessWidget {
  const BagStoreDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: DashBoardView.routeName,
    );
  }
}