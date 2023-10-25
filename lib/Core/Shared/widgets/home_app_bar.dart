import 'package:cinemax_movie_app/Features/WishList/wish_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Constants/colors_const.dart';
import '../../Constants/icon_const.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 24, right: 24, bottom: 20),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
              'https://scontent.fcai19-4.fna.fbcdn.net/v/t39.30808-6/357726268_1334399570446800_5002302892859737700_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=5f2048&_nc_ohc=A-_syEnMHqEAX_HsVml&_nc_ht=scontent.fcai19-4.fna&oh=00_AfAix6D_Yfzdxwq5lbRD4Gli-KKL4qFNZa81qTUTSvWyfA&oe=653D06DE',
              scale: 34,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello, Ahmed',
                style: GoogleFonts.montserrat(
                  color: ConstColors.whiteColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'Let’s stream your favorite movie',
                style: GoogleFonts.montserrat(
                  color: ConstColors.grayColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          const Spacer(),
          Container(
            width: 32,
            height: 32,
            decoration: ShapeDecoration(
              color: ConstColors.grayColor.withOpacity(0.05),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: IconButton(
              padding: const EdgeInsets.all(0),
              icon: ConstIcons.solidLoveIcon,
              onPressed: () {
                Navigator.pushNamed(context, WishListView.routeName);
              },
            ),
          ),
        ],
      ),
    );
  }
}
