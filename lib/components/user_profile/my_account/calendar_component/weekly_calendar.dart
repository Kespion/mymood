import 'package:flutter/material.dart';

import 'day_card.dart';

class WeeklyCalendar extends StatelessWidget {
  final List<DateTime> dates;

  const WeeklyCalendar({super.key, required this.dates});

  @override
  Widget build(BuildContext context) {

    final List<String> icons = [
      "res/assets/icons/user_profile/grey_circle.svg",
      "res/assets/icons/user_profile/lavender_circle.svg",
      "res/assets/icons/user_profile/light_blue_circle.svg",
      "res/assets/icons/user_profile/pale_circle.svg",
      "res/assets/icons/user_profile/grey_circle.svg",
      "res/assets/icons/user_profile/orange_circle.svg",
      "res/assets/icons/user_profile/light_blue_circle.svg",
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: dates.map((date) => DayCard(
        imagePath: icons[dates.indexOf(date)],
        date: date,
      )).toList(),
    );
  }

}