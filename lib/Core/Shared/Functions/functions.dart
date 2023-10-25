import 'package:cinemax_movie_app/Core/Models/movie_model.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class GlobalFunctions {
  static void unFocusTextFieldsWhenClickOutSide(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }
 
  static Future<bool> isMovieInWishList(MovieModel movie) async {
    var movieBox = await Hive.openBox<MovieModel>("WishMovieList");
    return movieBox.containsKey(movie.name);
  }
  static void addMovie({required MovieModel movie}) async {
    var movieBox = Hive.box<MovieModel>("WishMovieList");

    // Check if a movie with the same name or image already exists in the box
    bool isDuplicate = movieBox.values.any((existingMovie) =>
        existingMovie.name == movie.name || existingMovie.image == movie.image);

    if (!isDuplicate) {
      await movieBox.add(movie);
    }
  }

  static void deleteMovie({required MovieModel movie}) async {
    var movieBox = await Hive.openBox<MovieModel>("WishMovieList");

    // Find the index of the movie in the box
    int index = movieBox.values.toList().indexWhere((m) => m.id == movie.id);

    if (index != -1) {
      // If the movie is found, delete it by its index
      await movieBox.deleteAt(index);
    }
  }
}
