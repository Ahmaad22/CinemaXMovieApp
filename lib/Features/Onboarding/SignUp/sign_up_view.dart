// ignore_for_file: use_build_context_synchronously

import 'package:cinemax_movie_app/Core/Constants/colors_const.dart';
import 'package:cinemax_movie_app/Core/Constants/icon_const.dart';
import 'package:cinemax_movie_app/Core/Shared/Customs/custom_app_bar.dart';
import 'package:cinemax_movie_app/Core/Shared/Customs/custom_main_button.dart';
import 'package:cinemax_movie_app/Core/Shared/Customs/custom_text_form_field.dart';
import 'package:cinemax_movie_app/Core/Shared/Functions/functions.dart';
import 'package:cinemax_movie_app/Core/Shared/Validation/validation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Core/Helper/show_snack_bar.dart';
import '../../../Core/Shared/widgets/bottom_navigation_bar.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  static const String routeName = "SignUpView";
  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  String? emailAddress;
  String? password;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GlobalFunctions.unFocusTextFieldsWhenClickOutSide(context),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: SignUpView._formKey,
            autovalidateMode: autovalidateMode,
            child: Column(
              children: [
                const CustomAppBar(
                  hasLoveIcon: false,
                  text: "Sign Up",
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 8),
                  child: Text(
                    "Let’s get started",
                    style: GoogleFonts.montserrat(
                        color: ConstColors.whiteColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Text(
                  "The latest movies and series ",
                  style: GoogleFonts.montserrat(
                      color: ConstColors.grayColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "are here",
                  style: GoogleFonts.montserrat(
                      color: ConstColors.grayColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 64, left: 24, right: 24, bottom: 24),
                  child: CustomTextFormField(
                    suffixIcon: null,
                    validator: (value) {
                      if (value!.isNotEmpty) {
                        return null;
                      } else {
                        return 'Field is requierd';
                      }
                    },
                    obscureText: false,
                    isPassword: false,
                    lable: 'Full name',
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 24, right: 24, bottom: 24),
                  child: CustomTextFormField(
                    onChanged: (value) {
                      emailAddress = value;
                    },
                    suffixIcon: null,
                    validator: (value) {
                      return Validation.emailValidation(value);
                    },
                    obscureText: false,
                    isPassword: false,
                    lable: 'Email Address',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: CustomTextFormField(
                    onChanged: (value) {
                      password = value;
                    },
                    suffixIcon: ConstIcons.solidEyeSlashIcon,
                    validator: (value) {
                      return Validation.passwordValidation(value);
                    },
                    obscureText: true,
                    isPassword: true,
                    lable: 'Password',
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomMainButton(
                    text: "Sign Up",
                    onTap: () async {
                      if (SignUpView._formKey.currentState!.validate()) {
                        // ignore: duplicate_ignore
                        try {
                          await FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
                            email: emailAddress!,
                            password: password!,
                          );
                          Navigator.pushNamed(
                              context, CustomBottomNavigationBar.routeName);
                        } on FirebaseAuthException catch (e) {
                          if (e.code == 'weak-password') {
                            showSnackBar(
                                context, 'The password provided is too weak.');
                          } else if (e.code == 'email-already-in-use') {
                            showSnackBar(context,
                                'The account already exists for that email.');
                          }
                        } catch (e) {
                          showSnackBar(context, 'ther was an erorr');
                        }
                      } else {
                        setState(
                          () {
                            autovalidateMode = AutovalidateMode.always;
                          },
                        );
                      }
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
