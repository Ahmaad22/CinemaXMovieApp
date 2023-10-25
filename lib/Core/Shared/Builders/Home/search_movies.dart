

import 'package:cinemax_movie_app/Core/Models/movie_model.dart';
import 'package:cinemax_movie_app/Core/Services/Api/api_movie.dart';
import 'package:cinemax_movie_app/Core/Shared/widgets/home_movie_card.dart';
import 'package:cinemax_movie_app/Features/WishList/empty_wish_list.dart';
import 'package:flutter/material.dart';

class SearchMoviesCardBuilder extends StatefulWidget {
  const SearchMoviesCardBuilder({
    super.key, required this.movieName,
  });
final String movieName;
  @override
  State<SearchMoviesCardBuilder> createState() => _HomeMoviesCardBuilderState();
}

class _HomeMoviesCardBuilderState extends State<SearchMoviesCardBuilder> {
  

  List<MovieModel> getSerachMovies =[];

  
 
  Future<void> getMovies() async {
  
    getSerachMovies = await  ApiMovie().getMoviesSearch(movieName: widget.movieName);
   
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
        getMovies();

    return getSerachMovies.isNotEmpty
  ?SizedBox(
      height: MediaQuery.of(context).size.height*0.75, 
     child: Center(
       child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 2/3,
                  crossAxisCount: 2, // Set the number of items per row
                ),
                physics: const BouncingScrollPhysics(),
                itemCount: getSerachMovies.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.06),
                    child: HomeMovieCard(
                      movieModel: getSerachMovies[index],
                    ),
                  );
                },
              ),
     ),
          )
        : const EmptyWishList();
  }
}





