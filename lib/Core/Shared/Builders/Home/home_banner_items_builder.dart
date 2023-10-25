import 'package:cinemax_movie_app/Core/Models/movie_model.dart';
import 'package:cinemax_movie_app/Core/Services/Api/api_movie.dart';
import 'package:flutter/material.dart';

import '../../widgets/home_banner_item.dart';
import '../../widgets/indicator.dart';

class HomeBunnerItemsBuilder extends StatefulWidget {
  const HomeBunnerItemsBuilder({Key? key}) : super(key: key);

  @override
  State<HomeBunnerItemsBuilder> createState() => _HomeBunnerItemsBuilderState();
}

class _HomeBunnerItemsBuilderState extends State<HomeBunnerItemsBuilder> {
  List<MovieModel> movies = [];
  bool isLoading = true; // Set an initial loading state

  @override
  void initState() {
    super.initState();
    getMovies();
    
  }

  Future<void> getMovies() async {
      movies = await ApiMovie().getTrendingMovies();
      setState(() {
        isLoading = false; // Set loading state to false when data is available
      });
    
  }

  int selectedItem = 2;

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Center(
        // ignore: sized_box_for_whitespace
        child: Container(
          width: 40, // Set the desired width
          height: 40, // Set the desired height
          child: const CircularProgressIndicator(),
        ),
      )
    :   Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 40),
          height: 140,
          child: PageView.builder(
            clipBehavior: Clip.none,
            controller: PageController(
              initialPage: selectedItem,
              keepPage: true,
              viewportFraction: 0.7,
            ),
            onPageChanged: (index) {
              setState(() {
                selectedItem = index;
              });
            },
            itemCount: 5,
            itemBuilder: (context, index) {
              var scale = selectedItem == index ? 1.1 : 0.8;
              return TweenAnimationBuilder(
                curve: Curves.ease,
                duration: const Duration(milliseconds: 350),
                tween: Tween(begin: scale, end: scale),
                child:  HomeBannerItem(
                  movieModel: movies[index],
                ),
                builder: (context, value, child) {
                  return Transform.scale(
                    scale: value.toDouble(),
                    child: child,
                  );
                },
              );
            },
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              5,
              (index) => Indicator(
                isActive: selectedItem == index ? true : false,
              ),
            ),
          ],
        )
      ],
    );
  }
}
