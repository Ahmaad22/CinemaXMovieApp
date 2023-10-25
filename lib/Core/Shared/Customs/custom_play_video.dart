import 'package:cinemax_movie_app/Core/Constants/colors_const.dart';
import 'package:flutter/material.dart';

class CustomPlayVideo extends StatelessWidget {
  const CustomPlayVideo({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          image,
          width: 121,
          height: 83,
        ),
        Positioned(
          left: 38,
          top: 16,
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(360),
                color: ConstColors.whiteColor.withOpacity(0.1)),
          ),
        ),
        Positioned(
          left: 43,
          top: 21,
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(360),
                color: ConstColors.whiteColor.withOpacity(0.1)),
          ),
        ),
        const Positioned(
          left: 47,
          top: 25,
          child: Icon(
            Icons.play_arrow,
            size: 32,
            color: ConstColors.whiteColor,
          ),
        )
      ],
    );
  }
}
