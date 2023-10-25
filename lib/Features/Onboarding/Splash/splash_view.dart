import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:cinemax_movie_app/Core/Constants/colors_const.dart';
import 'package:cinemax_movie_app/Core/Constants/images_const.dart';
import 'package:cinemax_movie_app/Features/Onboarding/OnboardingView1/onboarding_view_1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static const String routeName = "SplashView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        duration: 1500,
        splashIconSize: 250,
        splash: Column(
          children: [
            ConstImages.logoImage,
            Text(
              'CINEMAX',
              style: GoogleFonts.montserrat(
                color: ConstColors.primaryColor,
                fontSize: 28,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.12,
              ),
            )
          ],
        ),
        nextScreen: const OnboardingView1(),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: ConstColors.backgroundColor,
      ),
    );
  }
}
