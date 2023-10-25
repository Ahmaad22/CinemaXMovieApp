import 'package:cinemax_movie_app/Core/Shared/Builders/Home/search_movies.dart';
import 'package:cinemax_movie_app/Core/Shared/Customs/custom_sarch_text_field.dart';
import 'package:cinemax_movie_app/Core/Shared/Functions/functions.dart';
import 'package:flutter/material.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});
  static const routeName = 'SearchView';

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  String movieName = "";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GlobalFunctions.unFocusTextFieldsWhenClickOutSide(context),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              CustomSearchTextField(
                onChanged: (value) {
                      

                  setState(() {
                    movieName = value.toString();

                  });
                },
              ),
              SearchMoviesCardBuilder(
                movieName: movieName,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
