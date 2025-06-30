// features/add_products/presentation/views/is_featured_checked_box.dart



import 'package:bag_store_dash_board/core/utils/app_styles.dart';
import 'package:bag_store_dash_board/features/add_products/presentation/views/custom_check_box.dart';
import 'package:flutter/material.dart';

class IsFeaturesCheckedBox extends StatefulWidget {
  const IsFeaturesCheckedBox({super.key, required this.onChange});
  final ValueChanged<bool> onChange;

  @override
  State<IsFeaturesCheckedBox> createState() => _IsFeaturedCheckedBox();
}

class _IsFeaturedCheckedBox extends State<IsFeaturesCheckedBox> {
  bool isTermsAccepted=false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text.rich(
             TextSpan(
               children: [
                 TextSpan(
                   text: 'is Featured Item ?',
                   style: AppStyles.Light16.copyWith(
                     color:Colors.black,
                   ),
                 )
               ],
             ),
             textAlign: TextAlign.right,
           ),
        
        Expanded(child: SizedBox(width: 16,)),
       CustomCheckBox(isChecked:isTermsAccepted ,
       onChecked: (value) {
        widget.onChange(value);
        isTermsAccepted=value;
        setState(() {
        });
         
       },
       ),
       
       
      ],
    );
  }
}