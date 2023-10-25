import 'package:cinemax_movie_app/Core/Models/movie_model.dart';
import 'package:cinemax_movie_app/Core/Services/Api/api_movie.dart';
import 'package:cinemax_movie_app/Core/Shared/widgets/home_movie_card.dart';
import 'package:flutter/material.dart';

class UpComingMoviesCardBuilder extends StatefulWidget {
  const UpComingMoviesCardBuilder({
    super.key,
  });

  @override
  State<UpComingMoviesCardBuilder> createState() =>
      _HomeMoviesCardBuilderState();
}

class _HomeMoviesCardBuilderState extends State<UpComingMoviesCardBuilder> {
  List<MovieModel> upComingMovies = [];

  @override
  void initState() {
    super.initState();
    getMovies();
  }

  Future<void> getMovies() async {
    upComingMovies = await ApiMovie().getUpComing();
setState(() {
  
});
  }

  @override
  Widget build(BuildContext context) {
    getMovies();
    return SizedBox(
      height: 250,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: upComingMovies.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              bottom: 16,
              left: 16,
            ),
            child: HomeMovieCard(
                                                            isFavorite: upComingMovies[index].isInBox?true:false,

              movieModel: upComingMovies[index],
            ),
          );
        },
      ),
    );
  }
}
