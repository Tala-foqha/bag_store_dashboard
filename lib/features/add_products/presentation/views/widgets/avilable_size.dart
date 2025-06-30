// features/add_products/presentation/views/widgets/avilable_size.dart



import 'package:bag_store_dash_board/core/utils/app_styles.dart';
import 'package:bag_store_dash_board/features/add_products/presentation/views/custom_check_box.dart';
import 'package:flutter/material.dart';

class AvilableSize extends StatefulWidget {
  const AvilableSize({super.key, required this.onChange, required this.text});
  final ValueChanged<bool> onChange;
  final String text;

  @override
  State<AvilableSize> createState() => _AvilableSize();
}

class _AvilableSize extends State<AvilableSize> {
  bool isTermsAccepted=false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text.rich(
             TextSpan(
               children: [
                 TextSpan(
                   text: widget.text,
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