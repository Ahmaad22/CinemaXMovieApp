import 'package:cinemax_movie_app/Core/Models/movie_model.dart';
import 'package:dio/dio.dart';

class ApiMovie {
  final Dio dio = Dio();
  Future<List<MovieModel>> getTopRated() async {
    var response = await dio.get(
        "https://api.themoviedb.org/3/tv/top_rated?api_key=1379f20eab421916f0d9781333a86702");
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> movies = jsonData["results"];
    List<MovieModel> moviesList = [];
    for (var movie in movies) {
      MovieModel movieModel = MovieModel(
          id: movie["id"],
          name: movie["name"],
          overview: movie["overview"],
          image: movie["poster_path"],
          rate: movie["vote_average"],
          date: movie["first_air_date"]);
    
    moviesList.add(movieModel);

    }
    return moviesList;
  } 
  Future<List<MovieModel>> getMostPopular() async {
    var response = await dio.get(
        "https://api.themoviedb.org/3/discover/movie?include_adult=false&include_video=false&language=en-US&page=1&sort_by=popularity.desc&api_key=1379f20eab421916f0d9781333a86702");
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> movies = jsonData["results"];
    List<MovieModel> moviesList = [];
    for (var movie in movies) {
      MovieModel movieModel = MovieModel(
          id: movie["id"],
          name: movie["title"],
          overview: movie["overview"],
          image: movie["poster_path"],
          rate: movie["vote_average"],
          date: movie["release_date"]);
    
    moviesList.add(movieModel);

    }
    return moviesList;
  }
  Future<List<MovieModel>> getTrendingMovies() async {
    var response = await dio.get(
        "https://api.themoviedb.org/3/trending/movie/day?language=en-US&api_key=1379f20eab421916f0d9781333a86702");
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> movies = jsonData["results"];
    List<MovieModel> moviesList = [];
    for (var movie in movies) {
      MovieModel movieModel = MovieModel(
          id: movie["id"],
          name: movie["title"],
          overview: movie["overview"],
          image: movie["poster_path"],
          rate: movie["vote_average"],
          date: movie["release_date"]);
    
    moviesList.add(movieModel);

    }
        return moviesList;

    }
    

      Future<List<MovieModel>> getMoviesSearch({required String movieName}) async {
    var response = await dio.get(
        "https://api.themoviedb.org/3/search/movie?api_key=1379f20eab421916f0d9781333a86702&query=$movieName");
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> movies = jsonData["results"];
    List<MovieModel> moviesList = [];
    for (var movie in movies) {
      MovieModel movieModel = MovieModel(
          id: movie["id"],
          name: movie["title"],
          overview: movie["overview"],
          image: movie["poster_path"],
          rate: movie["vote_average"],
          date: movie["release_date"]);
    
    moviesList.add(movieModel);

    }
    return moviesList;
  }

Future<List<MovieModel>> getUpComing() async {
    var response = await dio.get(
        "https://api.themoviedb.org/3/movie/upcoming?language=en-US&page=1&api_key=1379f20eab421916f0d9781333a86702");
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> movies = jsonData["results"];
    List<MovieModel> moviesList = [];
    for (var movie in movies) {
      MovieModel movieModel = MovieModel(
          id: movie["id"],
          name: movie["title"],
          overview: movie["overview"],
          image: movie["poster_path"],
          rate: movie["vote_average"],
          date: movie["release_date"]);
    
    moviesList.add(movieModel);

    }
    return moviesList;
  }
Future<List<MovieModel>> getMovieTrailers({required dynamic movieId}) async {
  List<MovieModel> trailers = [];

  var response = await dio.get(
    "https://api.themoviedb.org/3/movie/$movieId/videos?api_key=1379f20eab421916f0d9781333a86702",
  );
  Map<String, dynamic> jsonData = response.data;
  List<dynamic> results = jsonData["results"];

  for (var trailer in results) {
    MovieModel trailerModel = MovieModel(
      key: trailer["key"],
      
    );
//https://www.youtube.com/watch?v=key
    trailers.add(trailerModel);
  }

  return trailers;
}
}
