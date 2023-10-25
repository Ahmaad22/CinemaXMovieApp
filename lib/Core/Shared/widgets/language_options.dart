import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Constants/colors_const.dart';

class LanguageOptions extends StatelessWidget {
  const LanguageOptions({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
      child: Text(
        text,
        style: GoogleFonts.montserrat(
          color: ConstColors.whiteColor,
          fontSize: 16,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.12,
        ),
      ),
    );
  }
}
