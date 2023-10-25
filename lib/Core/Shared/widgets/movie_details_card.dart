import 'package:cinemax_movie_app/Core/Constants/colors_const.dart';
import 'package:cinemax_movie_app/Core/Shared/Customs/custom_play_video.dart';
import 'package:cinemax_movie_app/Core/Shared/widgets/trailer_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieDetailsCard extends StatelessWidget {
  const MovieDetailsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color(0xFF252836),
          borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding:
            const EdgeInsets.only(bottom: 18, top: 12, left: 12, right: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CustomPlayVideo(image: "Assets/images/wishListMovie.png"),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: 65,
                          height: 20,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(6)),
                          child: Center(
                            child: Text(
                              "Episode",
                              style: GoogleFonts.montserrat(
                                textStyle: const TextStyle(
                                    color: ConstColors.whiteColor,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 8, bottom: 4),
                        child: Text(
                          "1h30m",
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                color: ConstColors.grayColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Text(
                        "Episode 1",
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              color: ConstColors.whiteColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                const TrailerButton(
                    backgroundColor: ConstColors.backgroundColor,
                    iconColor: Colors.orange,
                    icon: Icons.file_download_outlined)
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              "Football player who longs to write his own music. It’s not all smiles for this hunk though after he gets involved with his music teacher.",
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                    color: ConstColors.grayColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
