// core/widgets/customer_checked_box.dart

import 'package:bag_store_dash_board/core/utils/app_styles.dart';
import 'package:bag_store_dash_board/core/widgets/cheacked_box.dart';
import 'package:flutter/material.dart';

class CustomerCheckedBox extends StatefulWidget {
  const CustomerCheckedBox({
    super.key, required this.text,
  });
  final String text;

  @override
  State<CustomerCheckedBox> createState() => _CustomerCheckedBox();
}

class _CustomerCheckedBox extends State<CustomerCheckedBox> {
  bool isRmmemberMe=false;
  @override
  Widget build(BuildContext context) {
    return Row(
     children: [
       CheckedBox(
        
        isChecked: isRmmemberMe, inChecked: (bool value) {
          isRmmemberMe=value;
          setState(() {
            
          });
          },
       ),
       SizedBox(width: 4,),
       Text(widget.text,style: AppStyles.Light16.copyWith(
         color: Color(0xff070A03)
       ),),
      
     ],
    );
  }
}

