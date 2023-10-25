import 'package:cinemax_movie_app/Core/Models/movie_model.dart';
import 'package:cinemax_movie_app/Features/MovieDetails/movie_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Constants/colors_const.dart';

class HomeBannerItem extends StatelessWidget {
  const HomeBannerItem({
    super.key,required this.movieModel,
  });

  final MovieModel movieModel;

  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return MovieDetails(movieModel: movieModel);
        }));
      },
      child: Container(
        margin:  const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image:  DecorationImage(
            image: NetworkImage(
                'https://image.tmdb.org/t/p/original${movieModel.image}'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(0, 0, 0, 0.3),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Positioned(
              left: 24,
              bottom: 8,
              child: SizedBox(
                width: 250,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      movieModel.name,
                      style: GoogleFonts.montserrat(
                        color: ConstColors.whiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.12,
                      ),
                    ),
                    Text(
                      "${movieModel.date}",
                      style: GoogleFonts.montserrat(
                        color: ConstColors.whiteColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.12,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
