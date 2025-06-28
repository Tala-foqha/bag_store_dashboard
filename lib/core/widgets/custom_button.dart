// core/widgets/custom_button.dart

import 'package:bag_store_dash_board/core/utils/app_colors.dart';
import 'package:bag_store_dash_board/core/utils/app_styles.dart';
import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.onPressed, this.backgroundColor, this.color});
final String text;
final VoidCallback onPressed;
final Color? backgroundColor;
final Color? color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)
          ),
          backgroundColor:backgroundColor?? AppColors.primaryColor,
        ),
        onPressed: onPressed,
      
      child: Text(text,style: AppStyles.Light16.copyWith(color:color?? Colors.white),)),
    );
  }
}