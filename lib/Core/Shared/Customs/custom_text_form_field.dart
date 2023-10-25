import 'package:cinemax_movie_app/core/constants/colors_const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Constants/icon_const.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatefulWidget {
  CustomTextFormField({
    super.key,
    required this.suffixIcon,
    required this.validator,
    required this.obscureText,
    required this.isPassword,
    this.onChanged,
    required this.lable,
  });
  final String lable;
  Widget? suffixIcon;
  String? Function(String?)? validator;
  final Function(String)? onChanged;
  bool obscureText;
  final bool isPassword;
  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: widget.onChanged,
      obscureText: widget.obscureText,
      style: GoogleFonts.montserrat(
        color: ConstColors.grayColor,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.12,
      ),
      cursorColor: ConstColors.grayColor,
      decoration: InputDecoration(
        label: Text(
          widget.lable,
          style: GoogleFonts.montserrat(
            color: ConstColors.whiteColor,
            fontSize: 14,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.12,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: ConstColors.grayColor.withOpacity(0.2),
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ConstColors.grayColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ConstColors.grayColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(
            right: 24,
            top: 12,
          ),
          child: !widget.isPassword
              ? widget.suffixIcon
              : GestureDetector(
                  onTap: () {
                    setState(
                      () {
                        widget.obscureText = !widget.obscureText;
                        if (widget.obscureText) {
                          widget.suffixIcon = ConstIcons.solidEyeSlashIcon;
                        } else {
                          widget.suffixIcon = ConstIcons.solidEyeIcon;
                        }
                      },
                    );
                  },
                  child: widget.suffixIcon,
                ),
        ),
      ),
      validator: widget.validator,
    );
  }
}
