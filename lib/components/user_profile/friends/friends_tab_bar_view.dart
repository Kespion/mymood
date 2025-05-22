import 'package:flutter/cupertino.dart';
import 'package:my_mood/components/user_profile/friends/friend_card/friend_card.dart';

import '../../textfields/custom_input_textfield.dart';
import '../../texts/text_styles/custom_text_style.dart';

class FriendsTabBarView extends StatelessWidget {
  const FriendsTabBarView({super.key});

  @override
  Widget build(BuildContext context) {

    final List<FriendCard> friends = [
      const FriendCard(name: "Anthony Viano", mood: "happy"),
      const FriendCard(name: "Éva Jannarelli", mood: "sad"),
      const FriendCard(name: "Julien Fertilati", mood: "upset"),
      const FriendCard(name: "Yves Estrada", mood: "stressed"),
      const FriendCard(name: "Lauren Castillon", mood: "neutral"),
      const FriendCard(name: "Ines Landro", mood: "calm"),
      const FriendCard(name: "Stella Monterosso", mood: "energetic"),
    ];

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomInputTextField.customSize(
                "Rechercher un ami",
                CustomTextStyle.black16Regular,
                309,
                34
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
          ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              for (var friend in friends)
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: friend,
                ),
            ],
          ),
        ],
      ),
    );
  }

}