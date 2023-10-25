
import 'package:cinemax_movie_app/Core/Shared/Customs/custom_main_button.dart';
import 'package:cinemax_movie_app/Core/Shared/widgets/bottom_navigation_bar.dart';
import 'package:cinemax_movie_app/Features/Onboarding/LogIn/login_view.dart';
import 'package:cinemax_movie_app/Features/Onboarding/SignUp/sign_up_view.dart';
import 'package:cinemax_movie_app/core/constants/colors_const.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
class LoginSignUpView extends StatelessWidget {
  const LoginSignUpView({super.key});
  static const String routeName = "LoginSignUpView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: SvgPicture.asset(
              'Assets/images/Logo.svg',
              height: 88,
              width: 88,
            ),
          ),
          Text(
            "CINEMAX",
            style: GoogleFonts.montserrat(
                color: ConstColors.whiteColor,
                fontSize: 28,
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 4),
            child: Text(
              "Enter your registered ",
              style: GoogleFonts.montserrat(
                  color: ConstColors.grayColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Text(
            "Phone Number to Sign Up",
            style: GoogleFonts.montserrat(
                color: ConstColors.grayColor,
                fontSize: 14,
                fontWeight: FontWeight.w600),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 64, bottom: 16),
            child: CustomMainButton(
                text: "Sign Up",
                onTap: () {
                  Navigator.pushNamed(context, SignUpView.routeName);
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "I already have an account? ",
                style: GoogleFonts.montserrat(
                    color: ConstColors.grayColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, LogInView.routeName);
                },
                child: Text(
                  "Login",
                  style: GoogleFonts.montserrat(
                      color: ConstColors.primaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 44),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 62,
                  height: 1,
                  color: const Color(0xFF252836),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    "Or Sign up with",
                    style: GoogleFonts.montserrat(
                        color: ConstColors.grayColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  width: 62,
                  height: 1,
                  color: const Color(0xFF252836),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: ()async{
                   await signInWithGoogle();
                 // ignore: use_build_context_synchronously
                 Navigator.pushNamed(context, CustomBottomNavigationBar.routeName);

                },
                child: Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                        color: const Color(0xFFF3F8FB),
                        borderRadius: BorderRadius.circular(360)),
                    child: Padding(
                      padding: const EdgeInsets.all(22.0),
                      child: Image.asset(
                        'Assets/images/Google.png',
                        width: 24,
                        height: 24,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                        color: const Color(0xFF252836),
                        borderRadius: BorderRadius.circular(360)),
                    child: Padding(
                      padding: const EdgeInsets.all(22.0),
                      child: Image.asset(
                        'Assets/images/Apple.png',
                        width: 24,
                        height: 24,
                      ),
                    )),
              ),
              GestureDetector(
                 onTap: ()async{
                   await signInWithFacebook();
                 // ignore: use_build_context_synchronously
                 Navigator.pushNamed(context, CustomBottomNavigationBar.routeName);

                },
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      color: const Color(0xFF4267B2),
                      borderRadius: BorderRadius.circular(360)),
                  child: Padding(
                    padding: const EdgeInsets.all(22.0),
                    child: Image.asset(
                      'Assets/images/Facebook.png',
                      width: 24,
                      height: 24,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
Future<UserCredential> signInWithFacebook() async {
  // Trigger the sign-in flow
  final LoginResult loginResult = await FacebookAuth.instance.login();

  // Create a credential from the access token
  final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken!.token);

  // Once signed in, return the UserCredential
  return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
}
Future<UserCredential> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance.signInWithCredential(credential);
}