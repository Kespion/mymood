import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_mood/pages/home_page.dart';
import 'package:my_mood/pages/navigation_pages/settings_page.dart';
import 'package:my_mood/pages/navigation_pages/user_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 1; // Home par défaut

  final List<Widget> _pages = const [
    UserPage(),
    HomePage(),
    SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue, // couleur active
        unselectedItemColor: Colors.grey, // couleur inactive
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'res/assets/icons/bottom_navigation_bar/profile_icon_black.svg',
              color: _selectedIndex == 0 ? Colors.blue : Colors.grey,
            ),
            label: 'Profil',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'res/assets/icons/bottom_navigation_bar/home_icon_black.svg',
                color: _selectedIndex == 1 ? Colors.blue : Colors.grey
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'res/assets/icons/bottom_navigation_bar/settings_icon_black.svg',
                color: _selectedIndex == 2 ? Colors.blue : Colors.grey
            ),
            label: 'Paramètres',
          ),
        ],
      ),
    );
  }
}
