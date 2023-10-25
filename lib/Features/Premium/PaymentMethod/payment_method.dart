import 'package:cinemax_movie_app/Core/Constants/colors_const.dart';
import 'package:cinemax_movie_app/Core/Shared/Customs/custom_app_bar.dart';
import 'package:cinemax_movie_app/Core/Shared/Customs/custom_main_button.dart';
import 'package:cinemax_movie_app/Core/Shared/widgets/card_visa_card.dart';
import 'package:cinemax_movie_app/Core/Shared/widgets/payment_purshase.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentMethodView extends StatefulWidget {
  const PaymentMethodView({super.key});
  static const String routeName = "PaymentMethod";
  @override
  State<PaymentMethodView> createState() => _PaymentMethodViewState();
}

class _PaymentMethodViewState extends State<PaymentMethodView> {
  bool isActive = false;
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomAppBar(
            hasLoveIcon: false,
            text: "Payment Method",
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 32,
              ),
              Container(
                  width: 195,
                  height: 28,
                  decoration: BoxDecoration(
                      color: const Color(0xFFFF8700),
                      borderRadius: BorderRadius.circular(32)),
                  child: Center(
                    child: Text("Payment Confirm",
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              color: ConstColors.whiteColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        )),
                  )),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 48),
                child: Text(
                    "Enjoy the viewing experience after you confirm the payment",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: ConstColors.whiteColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    )),
              ),
              const SizedBox(
                height: 48,
              ),
              CardVisaCard(
                isActive: isActive,
                image: "Assets/images/visa.png",
                number: "•••• •••• •••• 87652",
              ),
              const SizedBox(
                height: 16,
              ),
              CardVisaCard(
                isActive: isActive,
                image: "Assets/images/MASTER CARD.png",
                number: "•••• •••• •••• 87652",
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xFF252836),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30, horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(FontAwesomeIcons.plus,
                            color: ConstColors.whiteColor, size: 16),
                        const SizedBox(
                          width: 12,
                        ),
                        Text("Add New",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                  color: ConstColors.whiteColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              CustomMainButton(
                text: "Purchase Now",
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return const PaymentPurchase();
                    },
                  );
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
