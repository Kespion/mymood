import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SelectedMood extends StatelessWidget {
  final SvgPicture moodIcon;

  const SelectedMood(this.moodIcon, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        moodIcon,
        const SizedBox(width: 25,),
        const Text("Voici ton mood !")
      ],
    );
  }

}