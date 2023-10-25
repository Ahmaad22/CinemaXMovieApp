import 'package:cinemax_movie_app/Core/Constants/images_const.dart';
import 'package:cinemax_movie_app/Features/Onboarding/LoginSignUp/login_signup_view.dart';
import 'package:flutter/material.dart';

import '../../../Core/Shared/Customs/custom_botton_sheet.dart';

class OnboardingView3 extends StatelessWidget {
  const OnboardingView3({super.key});
  static const String routeName = "OnboardingView3";
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
              ConstImages.onboarding3,
              width: double.infinity,
              height: 300,
            ),
            const Spacer(),
            CustomBottomSheet(
              title: 'Offers ad-free viewing of high quality',
              subTitle:
                  'Semper in cursus magna et eu varius nunc adipiscing. Elementum justo, laoreet id sem semper parturient.',
              image: ConstImages.onboarding3NextButton,
              index: 3,
              onTap: () =>
                  Navigator.pushNamed(context, LoginSignUpView.routeName),
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
