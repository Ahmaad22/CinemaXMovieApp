import 'package:cinemax_movie_app/Core/Models/movie_model.dart';
import 'package:cinemax_movie_app/Core/Services/Api/api_movie.dart';
import 'package:cinemax_movie_app/Core/Shared/Customs/custom_app_bar.dart';
import 'package:cinemax_movie_app/Core/Shared/widgets/crew_item.dart';
import 'package:cinemax_movie_app/Core/Shared/widgets/details_movie.dart';
import 'package:cinemax_movie_app/Core/Shared/widgets/movie_details_story.dart';
import 'package:cinemax_movie_app/Core/Shared/widgets/movie_options.dart';
import 'package:cinemax_movie_app/Core/Shared/widgets/movie_rate.dart';
import 'package:flutter/material.dart';

class MovieDetails extends StatefulWidget {
  const MovieDetails({super.key, required this.movieModel});
  //static const String routeName = "MovieDetails";
  final MovieModel movieModel;
  @override
  State<MovieDetails> createState() => _MovieDetailsState();
}

class _MovieDetailsState extends State<MovieDetails> {


  List<CrewItem> crewMembers = const [
    CrewItem(),
    CrewItem(),
    CrewItem(),
    CrewItem()
  ];
  List<MovieModel> videos=[];

@override
  void initState() {
     
    super.initState();
     getMovies();
  }

  Future<void> getMovies() async {
    videos = await  ApiMovie().getMovieTrailers(movieId: widget.movieModel.id);
   
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.network(
                  'https://image.tmdb.org/t/p/original${widget.movieModel.image}',
                  height: 550,
                ),
                Container(
                  height: 550,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        const Color(0xFF1F1D2B).withOpacity(0.57),
                        const Color(0xFF1F1D2B)
                      ],
                    ),
                  ),
                  child: Column(
                    children: [
                      CustomAppBar(
                        hasLoveIcon: true,
                        text: widget.movieModel.name,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 24, bottom: 16),
                        child: Image.network(
                          'https://image.tmdb.org/t/p/original${widget.movieModel.image}',
                          width: 205,
                          height: 280,
                        ),
                      ),
                      DetailsMovie(movieModel: widget.movieModel),
                      MovieRate(movieModel: widget.movieModel),
MovieOptions(movieModel: videos.isNotEmpty ? videos[0] :null )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MovieDetailsStoryline(movieModel: widget.movieModel),
                  const SizedBox(
                    height: 24,
                  ),
                  // Text(
                  //   "Cast and Crew",
                  //   style: GoogleFonts.montserrat(
                  //     textStyle: const TextStyle(
                  //         color: ConstColors.whiteColor,
                  //         fontSize: 16,
                  //         fontWeight: FontWeight.w600),
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: 80,
                  //   child: ListView.builder(
                  //     scrollDirection: Axis.horizontal,
                  //     itemCount: crewMembers.length,
                  //     itemBuilder: (context, index) {
                  //       return const CrewItem();
                  //     },
                  //   ),
                  // ),
                  // const SizedBox(
                  //   height: 16,
                  // ),
                  // Text(
                  //   "Episode",
                  //   style: GoogleFonts.montserrat(
                  //     textStyle: const TextStyle(
                  //       color: ConstColors.whiteColor,
                  //       fontSize: 16,
                  //       fontWeight: FontWeight.w600,
                  //     ),
                  //   ),
                  // ),
                  // const DropDownList(),
                  // const SizedBox(
                  //   height: 16,
                  // ),
                  // const MovieDetailsCard(),
                  // const SizedBox(
                  //   height: 54,
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
