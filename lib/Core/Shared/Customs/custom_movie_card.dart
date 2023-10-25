import 'dart:ui';

import 'package:cinemax_movie_app/Core/Models/movie_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Features/MovieDetails/movie_details.dart';
import '../../../Features/Premium/PremiumAccount/premium_account_view.dart';
import '../../Constants/colors_const.dart';

class CustomMovieCard extends StatelessWidget {
  const CustomMovieCard({
    super.key,
    required this.isFree, required this.movieModel,
  });
  final MovieModel movieModel;
  final bool isFree;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isFree
            ? Navigator.push(context, MaterialPageRoute(builder: (context){
              return MovieDetails(movieModel: movieModel);
            }))
            : Navigator.pushNamed(context, PremiumAccountView.routeName);
      },
      child: SizedBox(
        width: double.infinity,
        height: 150,
        child: Stack(
          children: [
            Container(
              width: 112,
              height: 147,
              decoration: ShapeDecoration(
                image:  DecorationImage(
                  image: NetworkImage(
                      'https://image.tmdb.org/t/p/original${movieModel.image}'),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
              ),
            ),
            Positioned(
              left: 8,
              top: 8,
              child: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: ShapeDecoration(
                      color: ConstColors.backgroundColor.withOpacity(0.7),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.star_rounded,
                          color: ConstColors.premiumColor,
                          size: 20,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '${movieModel.rate}',
                          style: GoogleFonts.montserrat(
                            color: ConstColors.premiumColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 128,
              child: SizedBox(
                width: 200,
                height: 140,
                child: Stack(
                  children: [
                    Container(
                      width: 65,
                      height: 20,
                      decoration: ShapeDecoration(
                        color: isFree
                            ? ConstColors.primaryColor
                            : ConstColors.premiumColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                      ),
                      child: Center(
                        child: Text(
                          isFree ? 'Free' : 'Premium',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.12,
                          ),
                        ),
                      ),
                    ),
                   Positioned(
                      left: 0,
                      top: 32,
                      child: SizedBox(
                        width: 199,
                        child: Text(
                        movieModel.name,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.12,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 130,
                      top: 92,
                      child: Container(
                        width: 43,
                        height: 20,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              width: 1,
                              color: ConstColors.primaryColor,
                            ),
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'PG-13',
                            style: TextStyle(
                              color: Color(0xFF12CDD9),
                              fontSize: 12,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                              height: 0,
                              letterSpacing: 0.12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 0,
                      top: 64,
                      child: SizedBox(
                        width: 100,
                        height: 40,
                        child: Stack(
                          children: [
                            Icon(
                              Icons.calendar_month,
                              color: ConstColors.grayColor,
                              size: 18,
                            ),
                            Positioned(
                              left: 30,
                              top: 1,
                              child: Text(
                                '2021',
                                style: TextStyle(
                                  color: Color(0xFF92929D),
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                  letterSpacing: 0.12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 0,
                      top: 94,
                      child: SizedBox(
                        width: 120,
                        height: 16,
                        child: Stack(
                          children: [
                            Icon(
                              Icons.watch_later,
                              color: ConstColors.grayColor,
                              size: 18,
                            ),
                            Positioned(
                              left: 30,
                              top: 0,
                              child: Text(
                                '148 Minutes',
                                style: TextStyle(
                                  color: Color(0xFF92929D),
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                  letterSpacing: 0.12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 0,
                      top: 122,
                      child: SizedBox(
                        width: 130,
                        height: 16,
                        child: Stack(
                          children: [
                            Icon(
                              Icons.theaters,
                              color: ConstColors.grayColor,
                              size: 18,
                            ),
                            Positioned(
                              left: 30,
                              top: 1,
                              child: Text(
                                'Action   |',
                                style: TextStyle(
                                  color: Color(0xFF92929D),
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                  letterSpacing: 0.12,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 90,
                              top: 1,
                              child: Text(
                                'Movie',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                  letterSpacing: 0.12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
