import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNaviationBar extends StatelessWidget {

  const CustomBottomNaviationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('res/assets/icons/bottom_navigation_bar/profile_icon_black.svg'),
            label: 'Profil',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('res/assets/icons/bottom_navigation_bar/home_icon_black.svg'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('res/assets/icons/bottom_navigation_bar/settings_icon_black.svg'),
            label: 'Paramètres',
          ),
      ]
    );
  }

}