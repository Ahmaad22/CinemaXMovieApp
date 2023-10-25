import 'package:cinemax_movie_app/Core/Constants/colors_const.dart';
import 'package:cinemax_movie_app/Core/Shared/Customs/custom_main_button.dart';
import 'package:cinemax_movie_app/Core/Shared/Customs/custom_text_form_field.dart';
import 'package:cinemax_movie_app/Core/Shared/Functions/functions.dart';
import 'package:cinemax_movie_app/Core/Shared/Validation/validation.dart';
import 'package:cinemax_movie_app/Features/Onboarding/Verification/verification_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Core/Shared/Customs/custom_app_bar.dart';

class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({super.key});

  static const String routeName = "ResetPasswordView";
  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GlobalFunctions.unFocusTextFieldsWhenClickOutSide(context),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: ResetPasswordView._formKey,
            autovalidateMode: autovalidateMode,
            child: Column(
              children: [
                const CustomAppBar(
                  hasLoveIcon: false,
                ),
                const SizedBox(
                  height: 45,
                ),
                Text(
                  'Reset Password',
                  style: GoogleFonts.montserrat(
                    color: ConstColors.whiteColor,
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                Text(
                  'Recover your account password',
                  style: GoogleFonts.montserrat(
                    color: ConstColors.grayColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: CustomTextFormField(
                    suffixIcon: null,
                    validator: (value) {
                      return Validation.emailValidation(value);
                    },
                    obscureText: false,
                    isPassword: false,
                    lable: 'Email Address',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomMainButton(
                  text: 'Next',
                  onTap: () {
                    if (ResetPasswordView._formKey.currentState!.validate()) {
                      Navigator.pushNamed(context, VerificationView.routeName);
                    } else {
                      setState(
                        () {
                          autovalidateMode = AutovalidateMode.always;
                        },
                      );
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
