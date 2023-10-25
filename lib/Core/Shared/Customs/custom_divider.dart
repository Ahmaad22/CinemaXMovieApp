
import 'package:flutter/material.dart';

import '../../Constants/colors_const.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: ConstColors.grayColor.withOpacity(0.1),
      height: 0,
      thickness: 2,
      indent: 24,
      endIndent: 24,
    );
  }
}
