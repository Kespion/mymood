import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_mood/components/texts/custom_text.dart';

class SettingsOptionClickableText extends StatelessWidget {

  final String iconPath;
  final String title;
  final double iconSize;
  final TextStyle textStyle;

  const SettingsOptionClickableText({super.key, required this.iconPath, required this.title, required this.iconSize, required this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 10),
        SizedBox(
          width: 50,
          child: SvgPicture.asset(
            iconPath,
            width: iconSize,
            height: iconSize,
          ),
        ),
        const SizedBox(width: 10),
        MaterialButton(
          onPressed: () {
          },
          child: CustomText(
            title,
            textStyle,
          ),
        )
      ],
    );
  }

}