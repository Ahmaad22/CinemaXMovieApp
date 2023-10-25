import 'package:cinemax_movie_app/Core/Constants/colors_const.dart';
import 'package:cinemax_movie_app/Core/Models/movie_model.dart';
import 'package:flutter/material.dart';

class MovieItem extends StatelessWidget {
  const MovieItem({
    Key? key, required this.movieModel,
  }) : super(key: key);
final MovieModel movieModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Stack(
        children: [
          Image.asset(
            "Assets/images/UpcomingMovies.png",
            width: double.infinity,
            height: 168,
          ),
          Positioned(
            left: 135,
            top: 60,
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(360),
                color: ConstColors.whiteColor.withOpacity(0.1),
              ),
            ),
          ),
          Positioned(
            left: 140,
            top: 65,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(360),
                color: ConstColors.whiteColor.withOpacity(0.1),
              ),
            ),
          ),
          const Positioned(
            left: 145,
            top: 70,
            child: Icon(
              Icons.play_arrow,
              size: 32,
              color: ConstColors.whiteColor,
            ),
          ),
        ],
      ),
    );
  }
}
