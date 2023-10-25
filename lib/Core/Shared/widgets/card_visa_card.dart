import 'package:cinemax_movie_app/Core/Constants/colors_const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CardVisaCard extends StatefulWidget {
  CardVisaCard({
    super.key,
    required this.image,
    required this.isActive,
    required this.number,
  });
  final String image;
  final String number;
  bool isActive;

  @override
  State<CardVisaCard> createState() => _CardVisaCardState();
}

class _CardVisaCardState extends State<CardVisaCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: GestureDetector(
        onTap: () {
          widget.isActive ? widget.isActive = false : widget.isActive = true;
          setState(() {});
        },
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: const Color(0xFF252836),
              borderRadius: BorderRadius.circular(12),
              border: widget.isActive
                  ? Border.all(
                      color: ConstColors.primaryColor,
                      width: 1,
                      style: BorderStyle.solid)
                  : null),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
            child: Row(children: [
              Image.asset(
                widget.image,
                width: 45,
                height: 20,
              ),
              const Spacer(),
              Text(widget.number,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        color: ConstColors.whiteColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  )),
              const Spacer(),
              widget.isActive
                  ? Stack(
                      children: [
                        Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                              color: const Color(0xFF252836),
                              borderRadius: BorderRadius.circular(360),
                              border:
                                  Border.all(color: ConstColors.primaryColor)),
                        ),
                        Positioned(
                          left: 4,
                          top: 4,
                          child: Container(
                            width: 16,
                            height: 16,
                            decoration: BoxDecoration(
                                color: ConstColors.primaryColor,
                                borderRadius: BorderRadius.circular(360)),
                          ),
                        )
                      ],
                    )
                  : Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                          color: const Color(0xFF252836),
                          borderRadius: BorderRadius.circular(360),
                          border: Border.all(color: ConstColors.whiteColor)),
                    ),
            ]),
          ),
        ),
      ),
    );
  }
}
