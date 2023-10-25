import 'package:cinemax_movie_app/Core/Constants/images_const.dart';
import 'package:cinemax_movie_app/Core/Shared/Customs/custom_botton_sheet.dart';
import 'package:cinemax_movie_app/Features/Onboarding/OnboardingView2/onboarding_view_2.dart';
import 'package:flutter/material.dart';

class OnboardingView1 extends StatelessWidget {
  const OnboardingView1({super.key});
  static const String routeName = "OnboardingView1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            ConstImages.onboarding1Backgraound,
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Positioned(
            bottom: 16,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: CustomBottomSheet(
                onTap: () {
                  Navigator.pushNamed(context, OnboardingView2.routeName);
                },
                index: 1,
                image: ConstImages.onboarding1NextButton,
                title: 'Offers ad-free viewing of high quality',
                subTitle:
                    'Semper in cursus magna et eu varius nunc adipiscing. Elementum justo, laoreet id sem semper parturient.',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
