import 'package:flutter/material.dart';
import 'package:my_mood/components/texts/text_styles/custom_text_style.dart';

class CustomText extends StatelessWidget {

  final String content;

  final TextStyle textStyle;

  const CustomText(this.content, this.textStyle, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: textStyle,
    );
  }

}