part of 'movies_cubit.dart';

@immutable
sealed class MoviesState {}

final class MoviesInitial extends MoviesState {}
final class MoviesSuccess extends MoviesState {}
final class DeleteSuccess extends MoviesState {}
