import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_mood/components/mood_selector/mood_card/mood_card.dart';
import 'package:my_mood/components/mood_selector/mood_card/selected_mood.dart';

import '../texts/custom_text.dart';
import '../texts/text_styles/custom_text_style.dart';

class MoodSelector extends StatelessWidget {
  final void Function(SvgPicture) onMoodSelected;

  const MoodSelector({super.key, required this.onMoodSelected});

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
                      onMoodSelected(card.moodIcon);
                    },
                    child: card,
                  ),
                );
              }),
            ),
          ),
      ],
    );
  }
}
