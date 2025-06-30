// features/add_products/presentation/views/custom_check_box.dart
import 'package:bag_store_dash_board/core/utils/app_colors.dart';
import 'package:flutter/material.dart';


class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({super.key, required this.isChecked, required this.onChecked});
final bool isChecked;
final ValueChanged<bool>onChecked;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChecked(!isChecked);
      },
      child: AnimatedContainer(
        width: 24,
        height: 24,
        duration: Duration(milliseconds: 300),
      decoration:ShapeDecoration(
      
        color:isChecked?AppColors.primaryColor: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1.5,
            color:isChecked?Colors.transparent: Color(0xffDDDFDF),
          ),
          borderRadius: BorderRadius.circular(8)
        )
        ),
        child:isChecked?Icon(Icons.check,color: Colors.white,):SizedBox(),
       ),
    );
  }
}