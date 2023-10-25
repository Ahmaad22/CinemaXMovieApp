import 'dart:ui';

import 'package:cinemax_movie_app/Core/Models/movie_model.dart';
import 'package:cinemax_movie_app/Core/Shared/Functions/functions.dart';
import 'package:cinemax_movie_app/Cubits/FeatchCubit/cubit/featch_movies_cubit.dart';
import 'package:cinemax_movie_app/Cubits/cubit/movies_cubit.dart';
import 'package:cinemax_movie_app/Features/MovieDetails/movie_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Constants/colors_const.dart';


// ignore: must_be_immutable
class HomeMovieCard extends StatefulWidget {
  HomeMovieCard({Key? key, required this.movieModel, this.isFavorite});
  final MovieModel movieModel;
  bool? isFavorite;

  @override
  _HomeMovieCardState createState() => _HomeMovieCardState();
}

class _HomeMovieCardState extends State<HomeMovieCard>
    with AutomaticKeepAliveClientMixin<HomeMovieCard> {
  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    BlocProvider.of<FeatchMoviesCubit>(context).fetchMovies();
  }

 void toggleFavorite(MovieModel movie) {
    // Toggle the favorite status of the movie and notify the parent widget.
    movie.isFavorite = !movie.isFavorite;
    BlocProvider.of<FeatchMoviesCubit>(context).fetchMovies();
  }

  @override
  Widget build(BuildContext context) {
        super.build(context); // Ensure that the super's build method is called.

    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return MovieDetails(movieModel: widget.movieModel);
          }));
        },
        child: SizedBox(
          width: 135,
          height: 231,
          child: Stack(
            children: [
              Container(
                width: 135,
                height: 231,
                decoration: ShapeDecoration(
                  color: ConstColors.grayColor.withOpacity(0.1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              Container(
                width: 135,
                height: 178,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://image.tmdb.org/t/p/original${widget.movieModel.image}"),
                    fit: BoxFit.fill,
                  ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 8,
                top: 190,
                child: SizedBox(
                  width: 119,
                  child: Text(
                    widget.movieModel.name,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.montserrat(
                      color: ConstColors.whiteColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.12,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 10,
                top: 8,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if (widget.isFavorite ?? false) {
                        // Remove the movie from the wishListView
                        widget.isFavorite = false;
    
                        GlobalFunctions.deleteMovie(movie: widget.movieModel);
                                                          
                        BlocProvider.of<FeatchMoviesCubit>(context).fetchMovies();
                      } else {
                        BlocProvider.of<MoviesCubit>(context)
                            .addMovie(movie: widget.movieModel);
    
                        // Add the movie to the favorite list and change color to red
                        // GlobalFunctions.addMovie(
                        //   movie: MovieModel(
                        //     image: widget.movieModel.image,
                        //     name: widget.movieModel.name,
                        //     rate: widget.movieModel.rate,
    
                        //   ),
                        // );
    
                        // Add the movie to the wishListView
                        // GlobalFunctions.addMovie(movie: widget.movieModel);
    
                        widget.isFavorite = true;
                      }
                    });
                  },
                  child: FaIcon(
                    FontAwesomeIcons.solidHeart,
                    size: 20,
                    color: widget.isFavorite ?? false
                        ? Colors.red
                        : Colors.white.withOpacity(0.7),
                  ),
                ),
              ),
              Positioned(
                left: 66,
                top: 8,
                child: ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                    child: Container(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: ShapeDecoration(
                        color: ConstColors.backgroundColor.withOpacity(0.7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.star_rounded,
                            color: ConstColors.premiumColor,
                            size: 20,
                          ),
                          const SizedBox(width: 3),
                          Text(
                            "${widget.movieModel.rate}",
                            style: GoogleFonts.montserrat(
                              color: ConstColors.premiumColor,
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
