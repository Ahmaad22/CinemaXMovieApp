
import 'package:cinemax_movie_app/Core/Models/movie_model.dart';
import 'package:cinemax_movie_app/Core/Services/Api/api_movie.dart';
import 'package:flutter/material.dart';

import '../../widgets/home_movie_card.dart';

class TopRatedMoviesCardBuilder extends StatefulWidget {
  const TopRatedMoviesCardBuilder({
    super.key,
  });

  @override
  State<TopRatedMoviesCardBuilder> createState() => _HomeMoviesCardBuilderState();
}

class _HomeMoviesCardBuilderState extends State<TopRatedMoviesCardBuilder> {
  

  List<MovieModel> topRatedMovies =[];

  @override
  void initState() {
    super.initState();
     getMovies();
  }

  Future<void> getMovies() async {
  
    topRatedMovies = await  ApiMovie().getTopRated();
   
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: topRatedMovies.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return  Padding(
            padding: const EdgeInsets.only(
              bottom: 16,
              left: 16,
            ),
            child: HomeMovieCard(
                                              isFavorite: topRatedMovies[index].isInBox?true:false,

              movieModel: topRatedMovies[index],
            ),
          );
        },
      ),
    );
  }
}
