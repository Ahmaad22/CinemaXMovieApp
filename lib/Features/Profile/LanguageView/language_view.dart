import 'package:cinemax_movie_app/Core/Shared/Customs/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../Core/Shared/widgets/other_langages.dart';
import '../../../Core/Shared/widgets/sugested_languages.dart';

class LanguageView extends StatelessWidget {
  const LanguageView({super.key});
  static const String routeName = 'LanguageView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomAppBar(
            hasLoveIcon: false,
            text: 'Language',
          ),
          SizedBox(
            height: 30,
          ),
          SuggestedLanguages(),
          SizedBox(
            height: 20,
          ),
          OtherLanguages(),
        ],
      ),
    );
  }
}
