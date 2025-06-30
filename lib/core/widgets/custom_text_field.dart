// core/widgets/custom_text_field.dart
import 'package:bag_store_dash_board/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.suffixIcon, required this.hintText, this.controller,  this.obscureText=false, this.validator, this.prefixIcon, this.color, this.maxLine=1});
 final Widget? suffixIcon;
 final Widget? prefixIcon;
 final String hintText;
 final TextEditingController? controller;
 final Color? color;
 final bool obscureText;
 final String? Function(String?)? validator;
 final int?maxLine;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLine,
      obscureText:obscureText ,
      controller:controller ,
      validator:validator?? (value){
        if(value!.isEmpty||value==null){
          return 'please enter field';
        }
      },
      decoration: InputDecoration(
        
        fillColor: Colors.white70,
        filled: true,
        suffixIcon:suffixIcon ,
        prefixIcon: prefixIcon,
        //enabled: false,
        hintText: hintText,
        hintStyle:AppStyles.Light16.copyWith(
          color: Color(0xffDFDFDF)
        ) ,
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
        border: buildBorder()

        
      ),

      
    );
  }
}
OutlineInputBorder buildBorder(){
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: BorderSide(
      width:1 ,
       color: Color(0xFFE6E9E9)
    )
  );
}