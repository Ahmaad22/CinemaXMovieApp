import 'package:cinemax_movie_app/Core/Shared/Builders/Home/most_popular_movies.dart';
import 'package:cinemax_movie_app/Core/Shared/Builders/Home/up_coming_movies.dart';
import 'package:cinemax_movie_app/Core/Shared/Functions/functions.dart';
import 'package:cinemax_movie_app/Cubits/cubit/movies_cubit.dart';
import 'package:cinemax_movie_app/Features/MostPopular/most_popular_view.dart';
import 'package:cinemax_movie_app/Features/TopRated/top_rated.dart';
import 'package:cinemax_movie_app/Features/UpComingMovies/upcoming_movies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Core/Shared/Builders/Home/home_banner_items_builder.dart';
import '../../Core/Shared/Builders/Home/top_rated_movies_card_builder.dart';
import '../../Core/Shared/Customs/custom_see_all_row.dart';
import '../../Core/Shared/widgets/home_app_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static const String routeName = "HomeView";

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String movieName = "";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GlobalFunctions.unFocusTextFieldsWhenClickOutSide(context),
      child: BlocConsumer<MoviesCubit, MoviesState>(
        listener: (context, state) {
setState(() {
  
});        },
        builder: (context, state) {
          
          return Scaffold(
            body: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                const SliverToBoxAdapter(child: HomeAppBar()),
                const SliverToBoxAdapter(child: HomeBunnerItemsBuilder()),
                SliverToBoxAdapter(
                    child: CustomSeeAllRow(
                  text: 'Most popular',
                  onPressed: () {
                    Navigator.pushNamed(context, MostPopularView.routeName);
                  },
                )),
                const SliverToBoxAdapter(child: TopRatedMoviesCardBuilder()),
                SliverToBoxAdapter(
                    child: CustomSeeAllRow(
                  text: 'Top rated',
                  onPressed: () {
                    Navigator.pushNamed(context, TopRatedView.routeName);
                  },
                )),
                const SliverToBoxAdapter(child: MostPopularMoviesCardBuilder()),
                SliverToBoxAdapter(
                    child: CustomSeeAllRow(
                  text: 'Upcoming',
                  onPressed: () {
                    Navigator.pushNamed(context, UpcomingMoviesView.routeName);
                  },
                )),
                 const SliverToBoxAdapter(child: UpComingMoviesCardBuilder()),
              ],
            ),
          );
        },
      ),
    );
  }
}
