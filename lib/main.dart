// main.dart
import 'package:bag_store_dash_board/core/helper_function/on_generate_route.dart';
import 'package:bag_store_dash_board/features/dash_board/presentation/views/dash_board_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BagStoreDashBoard());
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