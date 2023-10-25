import 'package:cinemax_movie_app/Core/Constants/images_const.dart';
import 'package:cinemax_movie_app/Core/Shared/Customs/custom_botton_sheet.dart';
import 'package:cinemax_movie_app/Features/Onboarding/OnboardingView3/onboarding_view_3.dart';
import 'package:flutter/material.dart';

class OnboardingView2 extends StatelessWidget {
  const OnboardingView2({super.key});
  static const String routeName = "OnboardingView2";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Image.asset(
              ConstImages.onboarding2,
              width: double.infinity,
              height: 300,
            ),
            const Spacer(),
            CustomBottomSheet(
              title: 'Offers ad-free viewing of high quality',
              subTitle:
                  'Semper in cursus magna et eu varius nunc adipiscing. Elementum justo, laoreet id sem semper parturient.',
              image: ConstImages.onboarding2NextButton,
              index: 2,
              onTap: () =>
                  Navigator.pushNamed(context, OnboardingView3.routeName),
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
