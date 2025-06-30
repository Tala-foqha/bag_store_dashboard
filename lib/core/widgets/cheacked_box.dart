// core/widgets/cheacked_box.dart

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CheckedBox extends StatelessWidget {
  const CheckedBox({
    super.key, required this.isChecked, required this.inChecked,
  });
  final bool isChecked;
  final ValueChanged<bool>inChecked;
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        inChecked(!isChecked);
      },
      child: AnimatedContainer(
       duration: Duration(milliseconds: 300),
        height: 16,
        width: 16,
        decoration: BoxDecoration(
               color: isChecked?Color(0xff6C8947):Colors.white,
      
          border: Border.all(
            color: Color(0xffDFDFDF),
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: SvgPicture.asset('assets/images/check tick.svg',
          width: 10,
          height: 8,
               
          ),
        ),
      ),
    );
  }
}
