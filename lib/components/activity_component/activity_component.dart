import 'package:flutter/material.dart';
import 'package:my_mood/components/activity_component/activity_slider/activity_slider.dart';
import 'package:my_mood/components/texts/text_styles/custom_text_style.dart';

class ActivityComponent extends StatelessWidget {
  final String activityName;
  final List<Map<String, dynamic>> activities;

  const ActivityComponent({super.key, required this.activityName, required this.activities});

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
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ActivitySlider(activities: activities)
          ],
        )
      ],
    );
  }
}