import 'package:flutter/cupertino.dart';
import 'package:my_mood/components/mood_selector/mood_card/mood_card.dart';

import '../texts/custom_text.dart';
import '../texts/text_styles/custom_text_style.dart';

class MoodSelector extends StatelessWidget {

  const MoodSelector({super.key});

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

    return Column(
      children: [
        CustomText("Enregistre ton Mood pour voir les activités du jour !", CustomTextStyle.black16Regular),
        const SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MoodCard.happy,
            MoodCard.sad,
            MoodCard.upset,
          ],
        ),
        const SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MoodCard.stressed,
            MoodCard.neutral,
            MoodCard.calm,
          ],
        ),
        const SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MoodCard.energetic,
            MoodCard.tired,
            MoodCard.depressed,
          ],
        ),
      ],
    );
  }

}