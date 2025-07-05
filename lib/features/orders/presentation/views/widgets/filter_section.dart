// features/orders/presentation/views/widgets/filter_section.dart

import 'package:bag_store_dash_board/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class FilterSection extends StatelessWidget {
  const FilterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
       GestureDetector(
        onTap: () {
          
        },
        child: Icon(Icons.filter_list)),
         SizedBox(width: 16,),

      Text('Filter',
      style: AppStyles.meduim16,
      ),
    
     
    ],);
  }
}