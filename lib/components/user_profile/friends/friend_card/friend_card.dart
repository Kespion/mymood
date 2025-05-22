import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../texts/text_styles/custom_text_style.dart';

class FriendCard extends StatelessWidget {
  final String name;
  final String mood;

  const FriendCard({super.key, required this.name, required this.mood});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color.fromRGBO(252, 193, 134, 1),
                Color.fromRGBO(154, 195, 209, 1),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Container(
            width: 290,
            height: 50,
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "res/assets/icons/user_profile/generic_avatar.png",
                  width: 40,
                  height: 40,
                ),
                Text(
                    name,
                    style: CustomTextStyle.black20BoldTitle500
                ),
                SvgPicture.asset(
                  "res/assets/icons/moods/$mood.svg",
                  width: 40,
                  height: 40,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 10,),
        Image.asset(
          "res/assets/icons/user_profile/remove_friend.png",
          width: 40,
          height: 40,
        ),
      ],
    );
  }

}