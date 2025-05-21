import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_mood/components/mood_selector/mood_card/mood_icon.dart';

import '../../../texts/text_styles/custom_text_style.dart';

class FriendCard extends StatelessWidget {
  const FriendCard({super.key});

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
            width: 260,
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(26),
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
                    "Anthony Viano",
                    style: CustomTextStyle.black20BoldTitle500
                ),
                SvgPicture.asset(
                  "res/assets/icons/moods/happy.svg",
                  width: 40,
                  height: 40,
                ),
              ],
            ),
          ),
        ),
        Image.asset(
          "res/assets/icons/user_profile/remove_friend.png",
          width: 40,
          height: 40,
        ),
      ],
    );
  }

}