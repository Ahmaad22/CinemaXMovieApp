import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Constants/colors_const.dart';
import '../../Constants/icon_const.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    this.text,
    required this.hasLoveIcon,
  });
  final String? text;
  final bool hasLoveIcon;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: Text(
        text == null ? '' : text!,
        style: GoogleFonts.montserrat(
          color: ConstColors.whiteColor,
          fontSize: 16,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.12,
        ),
      ),
      leading: Center(
        child: Container(
          width: 32,
          height: 32,
          decoration: ShapeDecoration(
            color: ConstColors.grayColor.withOpacity(0.05),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: IconButton(
            padding: const EdgeInsets.all(0),
            icon: ConstIcons.solidBakeIcon,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      actions: !hasLoveIcon
          ? []
          : [
              Row(
                children: [
                  Container(
                    width: 32,
                    height: 32,
                    decoration: ShapeDecoration(
                      color: ConstColors.grayColor.withOpacity(0.05),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: IconButton(
                      padding: const EdgeInsets.all(0),
                      icon: ConstIcons.solidLoveIcon,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 16,
              ),
            ],
    );
  }
}
