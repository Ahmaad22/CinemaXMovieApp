import '../../Constants/colors_const.dart';
import 'package:flutter/material.dart';

class ProgressNavigation extends StatelessWidget {
  const ProgressNavigation({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    if (index == 1) {
      return Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Container(
              width: 32,
              height: 10,
              decoration: BoxDecoration(
                color: ConstColors.primaryColor,
                borderRadius: BorderRadius.circular(360),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                color: ConstColors.primaryColor.withOpacity(0.4),
                borderRadius: BorderRadius.circular(360),
              ),
            ),
          ),
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: ConstColors.primaryColor.withOpacity(0.4),
              borderRadius: BorderRadius.circular(360),
            ),
          ),
        ],
      );
    } else if (index == 2) {
      return Row(
        children: [
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: ConstColors.primaryColor.withOpacity(0.4),
              borderRadius: BorderRadius.circular(360),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Container(
              width: 32,
              height: 10,
              decoration: BoxDecoration(
                color: ConstColors.primaryColor,
                borderRadius: BorderRadius.circular(360),
              ),
            ),
          ),
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: ConstColors.primaryColor.withOpacity(0.4),
              borderRadius: BorderRadius.circular(360),
            ),
          ),
        ],
      );
    } else {
      return Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                color: ConstColors.primaryColor.withOpacity(0.4),
                borderRadius: BorderRadius.circular(360),
              ),
            ),
          ),
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: ConstColors.primaryColor.withOpacity(0.4),
              borderRadius: BorderRadius.circular(360),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Container(
              width: 32,
              height: 10,
              decoration: BoxDecoration(
                color: ConstColors.primaryColor,
                borderRadius: BorderRadius.circular(360),
              ),
            ),
          ),
        ],
      );
    }
  }
}
