import 'package:cinemax_movie_app/Core/Constants/colors_const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmptyWishList extends StatelessWidget {
  const EmptyWishList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: (MediaQuery.of(context).size.height - 250) / 2),
      child: Column(
        children: [
          Image.asset(
            'Assets/images/magic-box 1.png',
            width: 76,
            height: 76,
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 75, right: 75, top: 16, bottom: 22),
            child: Text(
              "There is no movie ",
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                    color: ConstColors.grayColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 90),
            child: Center(
              child: Text(
                "Find your movie by Type title, categories, years, etc ",
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      color: ConstColors.grayColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
