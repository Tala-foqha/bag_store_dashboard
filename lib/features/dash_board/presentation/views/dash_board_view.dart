// features/dash_board/presentation/views/dash_board_view.dart
import 'package:bag_store_dash_board/features/dash_board/presentation/views/widgets/dash_board_view_body.dart';
import 'package:flutter/material.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});
static const routeName='dash-board';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DashBoardViewBody(),
    );
  }
}