import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Constants/colors_const.dart';

class CustomSeeAllRow extends StatelessWidget {
  const CustomSeeAllRow({
    super.key,
    required this.text,
    required this.onPressed,
  });
  final void Function()? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        bottom: 10,
        left: 24,
        right: 24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: GoogleFonts.montserrat(
              color: ConstColors.whiteColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          TextButton(
            onPressed: onPressed,
            child: Text(
              'See All',
              style: GoogleFonts.montserrat(
                color: ConstColors.primaryColor,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      ),
    );
  }
}
