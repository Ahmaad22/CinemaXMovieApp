
import 'package:flutter/material.dart';

import '../../Constants/colors_const.dart';

class Indicator extends StatelessWidget {
  final bool isActive;
  const Indicator({
    super.key,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 350),
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: isActive ? 22 : 8,
      height: 8,
      decoration: BoxDecoration(
        color: isActive
            ? ConstColors.primaryColor
            : ConstColors.primaryColor.withOpacity(0.5),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
