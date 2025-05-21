import 'package:flutter/material.dart';
import 'package:my_mood/components/user_profile/my_account/calendar_component/calendar_component.dart';
import 'package:my_mood/components/user_profile/my_account/my_mood_avatar.dart';

import '../../mood_selector/mood_card/mood_card.dart';
import '../../texts/custom_text.dart';
import '../../texts/text_styles/custom_text_style.dart';


class AccountTabBarView extends StatelessWidget {
  const AccountTabBarView({super.key});

  @override
  Widget build(BuildContext context) {

    final List<MoodCard> moodCards = [
      MoodCard.happy,
      MoodCard.sad,
      MoodCard.upset,
      MoodCard.stressed,
      MoodCard.neutral,
      MoodCard.calm,
      MoodCard.energetic,
      MoodCard.tired,
      MoodCard.depressed,
    ];

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 15),
          const Center(
              child: MyMoodAvatar()
          ),
          const SizedBox(height: 15),
          Center(
            child: Column(
              children: [
                Text(
                    'Coucou,',
                    style: CustomTextStyle.black16Regular
                ),
                Text(
                    "Marine",
                    style: CustomTextStyle.black20BoldTitle
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const CalendarComponent(),
          const SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomText("Tapes sur une émotion pour ajouter des", CustomTextStyle.black16Regular700),
              CustomText("recommandations personnalisées!", CustomTextStyle.black16Regular700),
              const SizedBox(height: 20),
              for (int i = 0; i < moodCards.length; i += 3)
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(3, (j) {
                      int index = i + j;
                      if (index >= moodCards.length) return const SizedBox(width: 100);
                      final card = moodCards[index];
                      return SizedBox(
                        width: 100,
                        child: MaterialButton(
                          padding: const EdgeInsets.all(0),
                          onPressed: () {

                          },
                          child: card,
                        ),
                      );
                    }
                    ),
                  ),
                ),
              const SizedBox(height: 20),
            ],
          )
        ],
      ),
    );
  }

}