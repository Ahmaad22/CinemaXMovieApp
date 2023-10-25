import 'package:cinemax_movie_app/Core/Constants/colors_const.dart';
import 'package:cinemax_movie_app/Features/Home/home_view.dart';
import 'package:cinemax_movie_app/Features/Profile/ProfileView/profile_view.dart';
import 'package:cinemax_movie_app/Features/Search/SearchView/search_view.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});
  static const routeName = 'CustomBottomNavigationBar';
  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    SearchView(),
    // DownloadsView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: GNav(
          color: ConstColors.grayColor,
          activeColor: ConstColors.primaryColor,
          gap: 6,
          backgroundColor: ConstColors.backgroundColor,
          tabBackgroundColor: const Color(0xFF252836),
          padding: const EdgeInsets.all(16),
          tabBorderRadius: 16,
          tabs: const [
            GButton(
              icon: Icons.home,
              text: "Home",
            ),
            GButton(
              icon: Icons.search,
              text: "Search",
            ),
           
            GButton(
              icon: Icons.person,
              text: "Profile",
            )
          ],
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
