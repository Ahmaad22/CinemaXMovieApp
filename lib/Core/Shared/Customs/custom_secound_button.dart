import 'package:cinemax_movie_app/Core/Constants/colors_const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSecoundButton extends StatelessWidget {
  const CustomSecoundButton({
    super.key,
    required this.text,
    required this.onTap,
  });
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          height: 56,
          decoration: BoxDecoration(
            border: Border.all(color: ConstColors.primaryColor),
            borderRadius: const BorderRadius.all(
              Radius.circular(32),
            ),
          ),
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                  fontSize: 16,
                  color: ConstColors.primaryColor,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.12,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
