import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_mood/components/texts/text_styles/custom_text_style.dart';

class MoodCard extends StatelessWidget {

  final String moodName;
  final String iconPath;

  const MoodCard(this.moodName, this.iconPath, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: MaterialButton(
        padding: const EdgeInsets.all(0),
        onPressed: () {

        },
        child: Column(
          children: [
            SvgPicture.asset(
              iconPath,
              width: 80,
              height: 80,
            ),
            const SizedBox(height: 5),
            Text(
              moodName,
              style: CustomTextStyle.black16Regular,
            )
          ],
        ),
      )
    );
  }

  static MoodCard happy = const MoodCard("Heureux(se)", "res/assets/icons/moods/happy.svg");
  static MoodCard sad = const MoodCard("Triste", "res/assets/icons/moods/sad.svg");
  static MoodCard upset = const MoodCard("Énervé(e)", "res/assets/icons/moods/upset.svg");
  static MoodCard stressed = const MoodCard("Stressé(e)", "res/assets/icons/moods/stressed.svg");
  static MoodCard neutral = const MoodCard("Neutre", "res/assets/icons/moods/neutral.svg");
  static MoodCard calm = const MoodCard("Calme", "res/assets/icons/moods/calm.svg");
  static MoodCard energetic = const MoodCard("Énergique", "res/assets/icons/moods/energetic.svg");
  static MoodCard tired = const MoodCard("Fatigué(e)", "res/assets/icons/moods/tired.svg");
  static MoodCard depressed = const MoodCard("Déprimé(e)", "res/assets/icons/moods/depressed.svg");

}