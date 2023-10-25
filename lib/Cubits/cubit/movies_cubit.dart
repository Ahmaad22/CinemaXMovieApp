import 'package:bloc/bloc.dart';
import 'package:cinemax_movie_app/Core/Models/movie_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';

part 'movies_state.dart';

class MoviesCubit extends Cubit<MoviesState> {
  MoviesCubit() : super(MoviesInitial());
bool isFavorite =false;
   void addMovie({required MovieModel movie}) async {
    var movieBox = Hive.box<MovieModel>("WishMovieList");

    bool isDuplicate = movieBox.values.any((existingMovie) =>
        existingMovie.name == movie.name || existingMovie.image == movie.image);

    if (!isDuplicate) {
      isFavorite=true;
      await movieBox.add(movie);
            emit(MoviesSuccess());

    }
  }

    void deleteMovie({required MovieModel movie}) async {
    var movieBox = await Hive.openBox<MovieModel>("WishMovieList");

    int index = movieBox.values.toList().indexWhere((m) => m.id == movie.id);

    if (index != -1) {
      await movieBox.deleteAt(index);
      emit(DeleteSuccess());
    }
  }
}
