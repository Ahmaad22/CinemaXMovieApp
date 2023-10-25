import 'package:cinemax_movie_app/Core/Constants/colors_const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieDescription extends StatelessWidget {
  const MovieDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Black Panther: Wakanda Forever",
            textAlign: TextAlign.start,
            style: GoogleFonts.montserrat(
              textStyle: const TextStyle(
                color: ConstColors.whiteColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(
                Icons.calendar_month_sharp,
                color: ConstColors.grayColor,
                size: 16,
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                "March 2, 2023",
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      color: ConstColors.grayColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Container(
                  width: 1,
                  height: 16,
                  color: ConstColors.grayColor,
                ),
              ),
              const Icon(
                Icons.local_movies_rounded,
                color: ConstColors.grayColor,
                size: 16,
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                "Action",
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      color: ConstColors.grayColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
