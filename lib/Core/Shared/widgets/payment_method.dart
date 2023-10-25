
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Constants/colors_const.dart';
import '../../Constants/images_const.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod(
      {super.key,
      required this.perMonth,
      required this.perioudTime,
      required this.payment,
      required this.monthOrYear});
  final bool perMonth;
  final String perioudTime;
  final String payment;
  final String monthOrYear;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color:
            perMonth ? ConstColors.primaryColor : ConstColors.backgroundColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: perMonth
                ? ConstColors.primaryColor
                : ConstColors.grayColor.withOpacity(0.1),
          ),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Stack(
        children: [
          SizedBox(
            height: 130,
            width: 138,
            child: perMonth ? ConstImages.premuimPaymentImage : null,
          ),
          Positioned(
            top: 10,
            left: 18,
            child: Text(
              '$perioudTime' '\nSubscription',
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                color: ConstColors.whiteColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.12,
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 25,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Rp',
                    style: GoogleFonts.montserrat(
                      color: ConstColors.whiteColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.12,
                    ),
                  ),
                  TextSpan(
                    text: payment,
                    style: GoogleFonts.montserrat(
                      color: ConstColors.whiteColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.12,
                    ),
                  ),
                  TextSpan(
                    text: '/\n$monthOrYear',
                    style: GoogleFonts.montserrat(
                      color: ConstColors.whiteColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.12,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
