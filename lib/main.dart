import 'package:cinemax_movie_app/Core/Constants/colors_const.dart';
import 'package:cinemax_movie_app/Core/Models/WishList/wish_list_adapter.dart';
import 'package:cinemax_movie_app/Core/Models/movie_model.dart';
import 'package:cinemax_movie_app/Cubits/FeatchCubit/cubit/featch_movies_cubit.dart';
import 'package:cinemax_movie_app/Cubits/cubit/movies_cubit.dart';
import 'package:cinemax_movie_app/Features/Onboarding/Splash/splash_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'Core/Routes/routes.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(WishListModelAdapter());

  await Hive.openBox<MovieModel>('Movies'); // Boxfor all movies
  await Hive.openBox<MovieModel>('WishMovieList');
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  //ApiMovie().getTopRated();
  //ApiMovie().getMostPopular();
  // ApiMovie().getUpComing();
//ApiMovie().getTrendingMovies();
  runApp(const CINEMAXMovieApp());
}

class CINEMAXMovieApp extends StatelessWidget {
  const CINEMAXMovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => MoviesCubit()),
              BlocProvider(create: (context) => FeatchMoviesCubit()),

      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: SplashView.routeName,
        onGenerateRoute: Routes.generateRoute,
        theme: ThemeData(
          scaffoldBackgroundColor: ConstColors.backgroundColor,
        ),
      ),
    );
  }
}
