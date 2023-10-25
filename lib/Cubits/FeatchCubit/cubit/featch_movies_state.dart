part of 'featch_movies_cubit.dart';

@immutable
sealed class FeatchMoviesState {}

final class FeatchMoviesInitial extends FeatchMoviesState {}
final class FetchMoviesSuccess extends FeatchMoviesState {

}
