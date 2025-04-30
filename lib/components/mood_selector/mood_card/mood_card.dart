import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_mood/components/mood_selector/mood_card/mood_icon.dart';
import 'package:my_mood/components/texts/text_styles/custom_text_style.dart';

class MoodCard extends StatelessWidget {

  final String moodName;
  final SvgPicture moodIcon;

  const MoodCard(this.moodName, this.moodIcon, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        moodIcon,
        const SizedBox(height: 5),
        Text(
          moodName,
          style: CustomTextStyle.black16Regular,
        )
      ],
    );
  }

  static MoodCard happy = MoodCard("Heureux(se)", MoodIcon.happy);
  static MoodCard sad = MoodCard("Triste", MoodIcon.sad);
  static MoodCard upset = MoodCard("Énervé(e)", MoodIcon.upset);
  static MoodCard stressed = MoodCard("Stressé(e)", MoodIcon.stressed);
  static MoodCard neutral = MoodCard("Neutre", MoodIcon.neutral);
  static MoodCard calm = MoodCard("Calme", MoodIcon.calm);
  static MoodCard energetic = MoodCard("Énergique", MoodIcon.energetic);
  static MoodCard tired = MoodCard("Fatigué(e)", MoodIcon.tired);
  static MoodCard depressed = MoodCard("Déprimé(e)", MoodIcon.depressed);

}