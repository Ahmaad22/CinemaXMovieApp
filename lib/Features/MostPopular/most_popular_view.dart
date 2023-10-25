import 'package:cinemax_movie_app/Core/Shared/Builders/top_rated_builder.dart';
import 'package:cinemax_movie_app/Core/Shared/Customs/custom_app_bar.dart';
import 'package:flutter/material.dart';

class MostPopularView extends StatelessWidget {
  const MostPopularView({super.key});
  static const String routeName = 'MostPopularView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
              hasLoveIcon: false,
              text: 'Most Popular Movies',
            ),
            TopRatedMovieCardBuilder(),
          ],
        ),
      ),
    );
  }
}
