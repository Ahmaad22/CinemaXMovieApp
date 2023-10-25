import 'package:cinemax_movie_app/Core/Shared/Builders/most_popmovie_card_builder.dart';
import 'package:cinemax_movie_app/Core/Shared/Customs/custom_app_bar.dart';
import 'package:flutter/material.dart';

class TopRatedView extends StatelessWidget {
  const TopRatedView({super.key});
  static const String routeName = 'TopRatedView';


  @override
  Widget build(BuildContext context) {
    return    const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
              hasLoveIcon: false,
              text: 'Top rated',
            ),
            MovieCardBuilder(),
          ],
        ),
      ),
    );
  }
}