import 'package:cinemax_movie_app/Core/Constants/icon_const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Core/Constants/colors_const.dart';
import '../../../Core/Shared/Customs/custom_app_bar.dart';
import '../../../Core/Shared/Customs/custom_main_button.dart';
import '../../../Core/Shared/Customs/custom_text_form_field.dart';
import '../../../Core/Shared/Functions/functions.dart';
import '../../../Core/Shared/Validation/validation.dart';

class CreateNewPasswordView extends StatefulWidget {
  const CreateNewPasswordView({super.key});

  static const String routeName = "CreateNewPasswordView";
  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  State<CreateNewPasswordView> createState() => _CreateNewPasswordViewState();
}

class _CreateNewPasswordViewState extends State<CreateNewPasswordView> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GlobalFunctions.unFocusTextFieldsWhenClickOutSide(context),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: CreateNewPasswordView._formKey,
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
                  'Create new password',
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
                  'Enter your new password',
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
                    suffixIcon: ConstIcons.solidEyeSlashIcon,
                    validator: (value) {
                      return Validation.passwordValidation(value);
                    },
                    obscureText: true,
                    isPassword: true,
                    lable: 'New Password',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: CustomTextFormField(
                    suffixIcon: ConstIcons.solidEyeSlashIcon,
                    validator: (value) {
                      return Validation.passwordValidation(value);
                    },
                    obscureText: true,
                    isPassword: true,
                    lable: 'Confirm Password',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomMainButton(
                  text: 'Reset',
                  onTap: () {
                    if (CreateNewPasswordView._formKey.currentState!
                        .validate()) {
                      Navigator.pop(context);
                      Navigator.pop(context);
                      Navigator.pop(context);
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
