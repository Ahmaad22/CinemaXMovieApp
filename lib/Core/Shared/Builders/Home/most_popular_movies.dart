import 'package:cinemax_movie_app/Core/Models/movie_model.dart';
import 'package:cinemax_movie_app/Core/Services/Api/api_movie.dart';
import 'package:cinemax_movie_app/Core/Shared/widgets/home_movie_card.dart';
import 'package:flutter/material.dart';

class MostPopularMoviesCardBuilder extends StatefulWidget {
  const MostPopularMoviesCardBuilder({
    super.key,
  });

  @override
  State<MostPopularMoviesCardBuilder> createState() =>
      _HomeMoviesCardBuilderState();
}

class _HomeMoviesCardBuilderState extends State<MostPopularMoviesCardBuilder> {
  List<MovieModel> mostPopularMovies = [];

  @override
  void initState() {
    super.initState();
    getMovies();
  }

  Future<void> getMovies() async {
    mostPopularMovies = await ApiMovie().getMostPopular();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: mostPopularMovies.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              bottom: 16,
              left: 16,
            ),
            child: HomeMovieCard(
                                isFavorite: mostPopularMovies[index].isInBox?true:false,

              movieModel: mostPopularMovies[index],
            ),
          );
        },
      ),
    );
  }
}
