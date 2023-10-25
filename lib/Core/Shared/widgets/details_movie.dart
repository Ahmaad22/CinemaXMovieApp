import 'package:cinemax_movie_app/Core/Constants/colors_const.dart';
import 'package:cinemax_movie_app/Core/Models/movie_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsMovie extends StatelessWidget {
  const DetailsMovie({
    super.key, required this.movieModel,
  });
final MovieModel movieModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Container(
            width: 1,
            height: 16,
            color: ConstColors.grayColor,
          ),
        ),
        
        const Icon(
          Icons.calendar_month_sharp,
          color: ConstColors.grayColor,
          size: 16,
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          "${movieModel.date}",
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
        
        
        
      
      ],
    );
  }
}
