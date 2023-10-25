import 'package:cinemax_movie_app/Core/Constants/colors_const.dart';
import 'package:cinemax_movie_app/Core/Shared/Customs/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});
  static const String routeName = "PrivacyPolicy";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: CustomAppBar(text: "Privacy Policy", hasLoveIcon: false),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Terms",
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        color: ConstColors.whiteColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget ornare quam vel facilisis feugiat amet sagittis arcu, tortor. Sapien, consequat ultrices morbi orci semper sit nulla. Leo auctor ut etiam est, amet aliquet ut vivamus. Odio vulputate est id tincidunt fames.",
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        color: ConstColors.grayColor,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget ornare quam vel facilisis feugiat amet sagittis arcu, tortor. Sapien, consequat ultrices morbi orci semper sit nulla. Leo auctor ut etiam est, amet aliquet ut vivamus. Odio vulputate est id tincidunt fames.",
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        color: ConstColors.grayColor,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  "Changes to the Service and/or Terms:",
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        color: ConstColors.whiteColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget ornare quam vel facilisis feugiat amet sagittis arcu, tortor. Sapien, consequat ultrices morbi orci semper sit nulla. Leo auctor ut etiam est, amet aliquet ut vivamus. Odio vulputate est id tincidunt fames.",
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        color: ConstColors.grayColor,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget ornare quam vel facilisis feugiat amet sagittis arcu, tortor. Sapien, consequat ultrices morbi orci semper sit nulla. Leo auctor ut etiam est, amet aliquet ut vivamus. Odio vulputate est id tincidunt fames.",
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        color: ConstColors.grayColor,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
