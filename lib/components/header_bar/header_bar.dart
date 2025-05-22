import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderBar extends StatelessWidget implements PreferredSizeWidget {

  const HeaderBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      title: Center(
        child: SvgPicture.asset(
          'res/assets/logos/logo_my_mood.svg',
          width: 73,
          height: 37,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

}