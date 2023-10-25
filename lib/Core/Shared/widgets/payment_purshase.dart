import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Constants/colors_const.dart';

class PaymentPurchase extends StatelessWidget {
  const PaymentPurchase({
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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 50, top: 16),
                  child: Image.asset(
                    'Assets/images/PaymentAlert.png',
                    height: 125,
                  ),
                ),
                Text(
                  textAlign: TextAlign.center,
                  'Your payment has completed!',
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
                  'Ullamcorper imperdiet urna id non sed est sem. Rhoncus amet, enim purus gravida donec aliquet.',
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
                        backgroundColor: ConstColors.primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: SizedBox(
                        height: 56,
                        width: 90,
                        child: Center(
                          child: Text(
                            'Ok',
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
