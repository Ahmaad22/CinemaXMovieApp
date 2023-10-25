import 'package:cinemax_movie_app/Core/Models/movie_model.dart';
import 'package:cinemax_movie_app/Core/Shared/Customs/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class UpcomingMoviesView extends StatefulWidget {
  const UpcomingMoviesView({super.key, required this.movieModel});
  static const String routeName = "UpcomingMovies";
  final MovieModel movieModel;

  @override
  State<UpcomingMoviesView> createState() => _UpcomingMoviesViewState();
}

class _UpcomingMoviesViewState extends State<UpcomingMoviesView> {
  late final String url;
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    // Set the URL using widget.movieModel.key in initState
    url = "https://www.youtube.com/watch?v=${widget.movieModel.key}";
    final videoID = YoutubePlayer.convertUrlToId(url);
    _controller = YoutubePlayerController(
        initialVideoId: videoID!,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: CustomAppBar(hasLoveIcon: false, text: "Movie Trailer"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                const SizedBox(height: 28),
                YoutubePlayer(
                    controller: _controller, showVideoProgressIndicator: true),
                //  MovieFullCard(movieModel: widget.movieModel),
                const SizedBox(height: 20), // Adjust this value as needed
              ],
            ),
          ),
        ],
      ),
    );
  }
}
