import 'package:cinemax_movie_app/Core/Constants/colors_const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CrewItem extends StatelessWidget {
  const CrewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          "Assets/images/EditProfile.png",
          width: 80,
          height: 80,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 24),
          child: Column(
            children: [
              Text(
                "Jon Watts",
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      color: ConstColors.whiteColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                "Directors",
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      color: ConstColors.grayColor,
                      fontSize: 10,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
