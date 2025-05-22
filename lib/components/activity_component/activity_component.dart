import 'package:flutter/material.dart';

import '../texts/text_styles/custom_text_style.dart';
import 'activity_slider/activity_slider.dart';

class ActivityComponent extends StatefulWidget {
  final String activityName;
  final List<Map<String, dynamic>> activities;
  final List<String> selectedTags;
  final Function(String) onTagToggle;

  const ActivityComponent({
    super.key,
    required this.activityName,
    required this.activities,
    required this.selectedTags,
    required this.onTagToggle,
  });

  @override
  State<ActivityComponent> createState() => _ActivityComponentState();
}

class _ActivityComponentState extends State<ActivityComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.activityName, style: CustomTextStyle.black20BoldTitle),
        const SizedBox(height: 15),
        ActivitySlider(
          activities: widget.activities,
          selectedTags: widget.selectedTags,
          onTagToggle: widget.onTagToggle,
        ),
      ],
    );
  }
}
