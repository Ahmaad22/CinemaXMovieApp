import 'package:bloc/bloc.dart';
import 'package:cinemax_movie_app/Core/Models/movie_model.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'featch_movies_state.dart';

class FeatchMoviesCubit extends Cubit<FeatchMoviesState> {
  FeatchMoviesCubit() : super(FeatchMoviesInitial());
   List<MovieModel>? movies;

   fetchMovies() async {
    var movieBox = Hive.box<MovieModel>("WishMovieList");

    movies =  movieBox.values.toList();
    emit(FetchMoviesSuccess());
  }
}
