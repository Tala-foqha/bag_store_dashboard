// features/orders/presentation/views/widgets/filter_section.dart

import 'package:flutter/material.dart';

class FilterSection extends StatelessWidget {
  const FilterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text('Filter'),
      Icon(Icons.filter)
    ],);
  }
}