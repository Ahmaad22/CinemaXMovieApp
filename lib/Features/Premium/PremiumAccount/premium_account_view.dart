import 'package:cinemax_movie_app/Core/Constants/colors_const.dart';
import 'package:cinemax_movie_app/Core/Constants/images_const.dart';
import 'package:cinemax_movie_app/Core/Shared/Customs/custom_app_bar.dart';
import 'package:cinemax_movie_app/Core/Shared/Customs/custom_main_button.dart';
import 'package:cinemax_movie_app/Features/Onboarding/LoginSignUp/login_signup_view.dart';
import 'package:cinemax_movie_app/Features/Premium/PaymentMethod/payment_method.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Core/Shared/widgets/payment_method.dart';

class PremiumAccountView extends StatefulWidget {
  const PremiumAccountView({super.key});
  static const String routeName = 'PremiumAccountView';

  @override
  State<PremiumAccountView> createState() => _PremiumAccountViewState();
}

class _PremiumAccountViewState extends State<PremiumAccountView> {
  bool perMonth = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomAppBar(
            hasLoveIcon: false,
            text: 'VIP',
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
            decoration: ShapeDecoration(
              color: ConstColors.premiumColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
            ),
            child: Text(
              'Access Premium',
              style: GoogleFonts.montserrat(
                color: ConstColors.whiteColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.12,
              ),
            ),
          ),
          Text(
            '\nThe latest movies and\nseries are here',
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              color: ConstColors.whiteColor,
              fontSize: 18,
              fontWeight: FontWeight.w600,
              height: 0,
              letterSpacing: 0.12,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    perMonth = !perMonth;
                  });
                },
                child: PaymentMethod(
                  perMonth: perMonth,
                  perioudTime: 'Monthly',
                  payment: '54.000',
                  monthOrYear: 'Month',
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    perMonth = !perMonth;
                  });
                },
                child: PaymentMethod(
                  perMonth: !perMonth,
                  perioudTime: 'Annual',
                  payment: '200.000',
                  monthOrYear: 'Year',
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Image.asset(
              ConstImages.premuimPaymentFeaturesImage,
              // width: MediaQuery.of(context).size.width - 2 * 24,
            ),
          ),
          CustomMainButton(
              text: 'Payment Method',
              onTap: () {
                Navigator.pushNamed(context, PaymentMethodView.routeName);
              }),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already subscribed? ',
                style: GoogleFonts.montserrat(
                  color: ConstColors.grayColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.12,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, LoginSignUpView.routeName, (route) => false);
                },
                child: Text(
                  'Login',
                  style: GoogleFonts.montserrat(
                    color: ConstColors.primaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.12,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
