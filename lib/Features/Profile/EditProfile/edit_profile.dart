import 'package:cinemax_movie_app/Core/Constants/colors_const.dart';
import 'package:cinemax_movie_app/Core/Constants/icon_const.dart';
import 'package:cinemax_movie_app/Core/Shared/Customs/custom_app_bar.dart';
import 'package:cinemax_movie_app/Core/Shared/Customs/custom_main_button.dart';
import 'package:cinemax_movie_app/Core/Shared/Customs/custom_text_form_field.dart';
import 'package:cinemax_movie_app/Core/Shared/Functions/functions.dart';
import 'package:cinemax_movie_app/Core/Shared/Validation/validation.dart';
import 'package:cinemax_movie_app/Features/Onboarding/Verification/verification_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({super.key});
  static const String routeName = "EditProfileView";
  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GlobalFunctions.unFocusTextFieldsWhenClickOutSide(context),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: EditProfileView._formKey,
            autovalidateMode: autovalidateMode,
            child: Column(children: [
              const CustomAppBar(text: "Edit Profile", hasLoveIcon: false),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [

                    const CircleAvatar(
              radius: 64,
              backgroundImage: NetworkImage(
                  'https://scontent.fcai19-4.fna.fbcdn.net/v/t39.30808-6/357726268_1334399570446800_5002302892859737700_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=5f2048&_nc_ohc=A-_syEnMHqEAX_HsVml&_nc_ht=scontent.fcai19-4.fna&oh=00_AfAix6D_Yfzdxwq5lbRD4Gli-KKL4qFNZa81qTUTSvWyfA&oe=653D06DE'),
            ),
                      Positioned(
                        right: 10,
                        bottom: 10,
                        child: Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                                color: const Color(0xFF252836),
                                borderRadius: BorderRadius.circular(360))),
                      ),
                      const Positioned(
                          bottom: 20,
                          right: 20,
                          child: Icon(
                            Icons.edit,
                            size: 12,
                            color: ConstColors.primaryColor,
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Ahmed",
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: ConstColors.whiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "ahmed@gmail.com",
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: Color(0xFFB1B1B1),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: CustomTextFormField(
                      suffixIcon: null,
                      validator: null,
                      obscureText: false,
                      isPassword: false,
                      lable: 'Full Name',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: CustomTextFormField(
                      suffixIcon: ConstIcons.solidEyeSlashIcon,
                      validator: (value) {
                        return Validation.passwordValidation(value);
                      },
                      obscureText: true,
                      isPassword: true,
                      lable: 'Password',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: CustomTextFormField(
                      suffixIcon: null,
                      validator: null,
                      obscureText: false,
                      isPassword: false,
                      lable: 'Phone Number',
                    ),
                  ),
                  CustomMainButton(
                    text: 'Next',
                    onTap: () {
                      if (EditProfileView._formKey.currentState!.validate()) {
                        Navigator.pushNamed(
                            context, VerificationView.routeName);
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
              )
            ]),
          ),
        ),
      ),
    );
  }
}
