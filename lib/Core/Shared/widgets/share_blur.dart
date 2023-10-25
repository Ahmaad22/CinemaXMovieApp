import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Constants/colors_const.dart';

class ShareBlurAlert extends StatelessWidget {
  const ShareBlurAlert({
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
          backgroundColor: const Color(0xFF1F1D2B),
          content: Container(
            padding: const EdgeInsets.all(0),
            width: MediaQuery.of(context).size.width - 2 * 16,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: ConstColors.backgroundColor,
                            ),
                            child: const Icon(
                              Icons.cancel_outlined,
                              color: ConstColors.grayColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Share to",
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            color: ConstColors.whiteColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 48),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "Assets/images/FacebookIcon.png",
                            width: 50,
                            height: 50,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Image.asset(
                            "Assets/images/InstagramIcon.png",
                            width: 50,
                            height: 50,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Image.asset(
                            "Assets/images/MassengerIcon.png",
                            width: 50,
                            height: 50,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Image.asset(
                            "Assets/images/TelegramIcon.png",
                            width: 50,
                            height: 50,
                          )
                        ],
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
