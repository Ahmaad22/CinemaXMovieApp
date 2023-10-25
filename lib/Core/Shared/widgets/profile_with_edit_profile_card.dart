import 'package:cinemax_movie_app/Features/Profile/EditProfile/edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Constants/colors_const.dart';
import '../../Constants/icon_const.dart';

class ProfileWithEditProfileCard extends StatelessWidget {
  const ProfileWithEditProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      width: MediaQuery.of(context).size.width - 2 * 24,
      decoration: BoxDecoration(
        border: Border.all(
          color: ConstColors.grayColor.withOpacity(0.1),
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: CircleAvatar(
              radius: 24,
              backgroundImage: NetworkImage(
                  'https://scontent.fcai19-4.fna.fbcdn.net/v/t39.30808-6/357726268_1334399570446800_5002302892859737700_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=5f2048&_nc_ohc=A-_syEnMHqEAX_HsVml&_nc_ht=scontent.fcai19-4.fna&oh=00_AfAix6D_Yfzdxwq5lbRD4Gli-KKL4qFNZa81qTUTSvWyfA&oe=653D06DE'),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ahmed Ali',
                style: GoogleFonts.montserrat(
                  color: ConstColors.whiteColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.12,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'ahmed@gmail.com',
                style: GoogleFonts.montserrat(
                  color: ConstColors.grayColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.28,
                ),
              ),
            ],
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, EditProfileView.routeName);
              },
              icon: ConstIcons.editIcon),
        ],
      ),
    );
  }
}
