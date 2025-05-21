import 'package:flutter/cupertino.dart';
import 'package:my_mood/components/user_profile/friends/friend_card/friend_card.dart';

import '../../textfields/custom_input_textfield.dart';
import '../../texts/text_styles/custom_text_style.dart';

class FriendsTabBarView extends StatelessWidget {
  const FriendsTabBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomInputTextField(
                  "Rechercher un ami",
                  CustomTextStyle.black16Regular
              ),
              GestureDetector(
                onTap: () {

                },
                child: Image.asset(
                  "res/assets/icons/user_profile/add_friend.png",
                ),
              ),
              const SizedBox(width: 0,)
            ],
          ),
          const SizedBox(height: 20),
          const FriendCard(),
        ],
      ),
    );
  }

}