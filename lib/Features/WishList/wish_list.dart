import 'package:cinemax_movie_app/Core/Models/movie_model.dart';
import 'package:cinemax_movie_app/Core/Shared/Customs/custom_app_bar.dart';
import 'package:cinemax_movie_app/Core/Shared/widgets/home_movie_card.dart';
import 'package:cinemax_movie_app/Cubits/FeatchCubit/cubit/featch_movies_cubit.dart';
import 'package:cinemax_movie_app/Features/WishList/empty_wish_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

class WishListView extends StatefulWidget {
  const WishListView({Key? key}) : super(key: key);

  static const String routeName = "WishList";

  @override
  State<WishListView> createState() => _WishListViewState();
}

class _WishListViewState extends State<WishListView> {
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
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: CustomAppBar(
              text: "Wishlist",
              hasLoveIcon: false,
            ),
          ),
          Expanded(
            child: ValueListenableBuilder<Box<MovieModel>>(
              valueListenable: Hive.box<MovieModel>("WishMovieList").listenable(),
              builder: (context, box, child) {
                final moviesList = box.values.toList();
                return moviesList.isNotEmpty
                    ? GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 2 / 3,
                          crossAxisCount: 2,
                        ),
                        physics: const BouncingScrollPhysics(),
                        itemCount: moviesList.length,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          final movie = moviesList[index];
                          return Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: MediaQuery.of(context).size.width * 0.06,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                // Handle love icon click here
                                // Toggle the favorite status and refresh the widget.
                                toggleFavorite(movie);
                              },
                              child: HomeMovieCard(
                                isFavorite: movie.isInBox?true:false,
                                movieModel: movie,
                              ),
                            ),
                          );
                        },
                      )
                    : const EmptyWishList();
              },
            ),
          ),
        ],
      ),
    );
  }
}
