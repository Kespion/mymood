import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderBar extends StatelessWidget implements PreferredSizeWidget {

  const HeaderBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: Row(
        children: [
          const SizedBox(width: 20, height: 20),
          SvgPicture.asset(
            'res/assets/logos/logo_my_mood.svg',
            width: 73,
            height: 37,
          ),
        ],
      ),
      leadingWidth: 100,
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'res/assets/icons/icon_settings.svg',
            width: 48,
            height: 48,
          ),
        ),
        const SizedBox(width: 10, height: 20),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

}