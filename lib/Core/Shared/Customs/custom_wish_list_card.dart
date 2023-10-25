import 'package:cinemax_movie_app/Core/Constants/colors_const.dart';
import 'package:cinemax_movie_app/Core/Constants/icon_const.dart';
import 'package:cinemax_movie_app/Core/Shared/Customs/custom_play_video.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomWishListCard extends StatelessWidget {
  const CustomWishListCard({super.key,required this.image,required this.name,required this.rate});
final String image;
final String name;
final String rate;

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
               CustomPlayVideo(image: image),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      Padding(
                        padding: const EdgeInsets.only(top: 6),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Text(
                              "Movie",
                              style: GoogleFonts.montserrat(
                                textStyle: const TextStyle(
                                    color: ConstColors.grayColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 6, left: 8, right: 4),
                            child: Icon(
                              Icons.star_purple500_outlined,
                              color: Color(0xFFFF8700),
                              size: 20,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Text(
                              rate,
                              style: GoogleFonts.montserrat(
                                textStyle: const TextStyle(
                                    color: Color(0xFFFF8700),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: ConstIcons.solidLoveIcon,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
