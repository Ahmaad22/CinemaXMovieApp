import 'package:cinemax_movie_app/Core/Constants/colors_const.dart';
import 'package:cinemax_movie_app/Core/Models/movie_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieDetailsStoryline extends StatelessWidget {
  const MovieDetailsStoryline({
    super.key, required this.movieModel,
  });
final MovieModel movieModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Story Line",
          style: GoogleFonts.montserrat(
            textStyle: const TextStyle(
                color: ConstColors.whiteColor,
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          "${movieModel.overview}",
          style: GoogleFonts.montserrat(
            textStyle: const TextStyle(
                color: ConstColors.grayColor,
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
