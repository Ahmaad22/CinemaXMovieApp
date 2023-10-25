import 'package:cinemax_movie_app/Core/Models/movie_model.dart';
import 'package:cinemax_movie_app/Core/Services/Api/api_movie.dart';
import 'package:flutter/material.dart';

import '../Customs/custom_movie_card.dart';

class TopRatedMovieCardBuilder extends StatefulWidget {
  const TopRatedMovieCardBuilder({
    super.key,
  });

  @override
  State<TopRatedMovieCardBuilder> createState() => _TopRatedMovieCardBuilder();
}


class _TopRatedMovieCardBuilder extends State<TopRatedMovieCardBuilder> {
  List<MovieModel> movies =[];
@override
void initState() {
  
    super.initState();
     getMovies();
  }

  Future<void> getMovies() async {
    movies = await  ApiMovie().getTopRated();
    setState(() {
      
    });
  }  @override
  Widget build(BuildContext context) {
    bool isFree = false;
    return SizedBox(
      height: MediaQuery.of(context).size.height - 160,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView.builder(
          itemCount: movies.length,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            isFree = !isFree;
            return Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: CustomMovieCard(
                movieModel:movies[index] ,
                isFree: isFree),
            );
          },
        ),
      ),
    );
  }
}
