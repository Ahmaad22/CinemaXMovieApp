import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Constants/colors_const.dart';
import '../widgets/progress_navigation.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet(
      {required this.onTap,
      super.key,
      required this.index,
      required this.image,
      required this.title,
      required this.subTitle});
  final String title;
  final String subTitle;
  final int index;
  final String image;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 2 * 24,
      height: 320,
      decoration: BoxDecoration(
        color: ConstColors.blackColor,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Text(
                title,
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontSize: 16,
                    color: ConstColors.whiteColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Text(
              subTitle,
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                  fontSize: 14,
                  color: ConstColors.grayColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                children: [
                  ProgressNavigation(index: index),
                  const Spacer(),
                  GestureDetector(
                    onTap: onTap,
                    child: SvgPicture.asset(
                      image,
                      width: 80,
                      height: 80,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
