import 'package:cinemax_movie_app/Core/Constants/colors_const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DownloadMovieCard extends StatelessWidget {
  const DownloadMovieCard(
      {super.key,
      required this.image,
      required this.name,
      required this.category,
      });
  final String image;
  final String name;
  final String category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          Container(
            width: double.infinity,
            height: 110,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color(0xFF252836).withOpacity(0.32)),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(children: [
                Stack(
                  children: [
                    Image.network(
                      image,
                      width: 121,
                      height: 83,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      category,
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            color: ConstColors.grayColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 180,
                      child: Text(
                        name,
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            color: ConstColors.whiteColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Movie   |   1.78 GB',
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          color: ConstColors.grayColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
