import 'package:flutter/material.dart';
import 'package:my_mood/components/activity_component/activity_slider/activity_slider.dart';
import 'package:my_mood/components/texts/text_styles/custom_text_style.dart';

class ActivityComponent extends StatelessWidget {
  final String activityName;

  const ActivityComponent({super.key, required this.activityName});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            activityName,
          style: CustomTextStyle.black20BoldTitle,
        ),
        const SizedBox(
          height: 15,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ActivitySlider()
          ],
        )
      ],
    );
  }
}