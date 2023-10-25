import 'package:cinemax_movie_app/Core/Shared/Customs/custom_app_bar.dart';
import 'package:cinemax_movie_app/Core/Shared/Customs/custom_on_off.dart';
import 'package:cinemax_movie_app/core/constants/colors_const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Notifactions extends StatefulWidget {
  const Notifactions({super.key});
  static const String routeName = "Notifaction";

  @override
  State<Notifactions> createState() => _NotifactionsState();
}

class _NotifactionsState extends State<Notifactions> {
  Color color = ConstColors.grayColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const CustomAppBar(text: "Notifaction", hasLoveIcon: false),
            const SizedBox(
              height: 24,
            ),
            Container(
              width: double.infinity,
              height: 166,
              decoration: BoxDecoration(
                  color: ConstColors.backgroundColor,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: const Color(0xFF252836), width: 1)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Messages Notifications",
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            color: ConstColors.grayColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        Text(
                          "Show Notifications",
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                color: ConstColors.whiteColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        const Spacer(),
                        CustomOnOff(color: color)
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Container(
                        width: double.infinity,
                        height: 1,
                        color: const Color(0xFF252836),
                      ),
                    ),
                    Text(
                      "Exceptions",
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            color: ConstColors.whiteColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
