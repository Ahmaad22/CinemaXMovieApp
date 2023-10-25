import 'dart:ui';

import 'package:cinemax_movie_app/Features/Onboarding/LoginSignUp/login_signup_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Constants/colors_const.dart';

class ProfileAlertDialog extends StatelessWidget {
  const ProfileAlertDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            color: Colors.transparent,
          ),
        ),
        AlertDialog(
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          backgroundColor: ConstColors.backgroundColor,
          content: Container(
            padding: const EdgeInsets.all(0),
            width: MediaQuery.of(context).size.width - 2 * 16,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 50, top: 16),
                  child: Image.asset(
                    'Assets/images/Question.png',
                    height: 125,
                  ),
                ),
                Text(
                  'Are you sure ?',
                  style: GoogleFonts.montserrat(
                    color: ConstColors.whiteColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.12,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'You Want to Logout?',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    color: ConstColors.grayColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.12,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          side: const BorderSide(
                            color: ConstColors.primaryColor,
                          ),
                        ),
                      ),
                      onPressed: ()async {
                        await FirebaseAuth.instance.signOut();
                        // ignore: use_build_context_synchronously
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            LoginSignUpView.routeName, (route) => false);
                      },
                      child: SizedBox(
                        height: 46,
                        width: 80,
                        child: Center(
                          child: Text(
                            'Log Out',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 16,
                                color: ConstColors.primaryColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ConstColors.primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: SizedBox(
                        height: 46,
                        width: 80,
                        child: Center(
                          child: Text(
                            'Cancel',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 16,
                                color: ConstColors.whiteColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
