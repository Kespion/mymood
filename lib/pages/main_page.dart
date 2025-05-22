import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_mood/pages/navigation_pages/home_page.dart';
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
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'res/assets/icons/bottom_navigation_bar/profile_icon_black.svg',
              color: _selectedIndex == 0 ? const Color.fromRGBO(154, 195, 209, 1) : Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'res/assets/icons/bottom_navigation_bar/home_icon_black.svg',
                color: _selectedIndex == 1 ? const Color.fromRGBO(154, 195, 209, 1) : Colors.black
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'res/assets/icons/bottom_navigation_bar/settings_icon_black.svg',
                color: _selectedIndex == 2 ? const Color.fromRGBO(154, 195, 209, 1) : Colors.black
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
