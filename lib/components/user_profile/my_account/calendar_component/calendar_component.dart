import 'package:flutter/material.dart';
import 'package:my_mood/components/user_profile/my_account/calendar_component/day_card.dart';
import 'package:my_mood/components/user_profile/my_account/calendar_component/weekly_calendar.dart';

import '../../../texts/text_styles/custom_text_style.dart';

import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class CalendarComponent extends StatelessWidget {
  const CalendarComponent({super.key});

  Future<void> initializeLocale() async {
    await initializeDateFormatting('fr_FR');
  }

  String getWeekPeriod(List<DateTime> dates) {
    final formatter = DateFormat('d MMMM yyyy', 'fr_FR');
    return 'Du ${formatter.format(dates[0])} au ${formatter.format(dates[dates.length - 1])}';
  }

  List<DateTime> getLastSevenDays() {
    final now = DateTime.now();
    return List.generate(7, (index) => now.subtract(Duration(days: 6 - index)));
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: initializeLocale(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final lastSevenDays = getLastSevenDays();
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Voici tes stats des 7 derniers jours",
                style: CustomTextStyle.black16Regular
              ),
              Text(
                getWeekPeriod(lastSevenDays),
                style: CustomTextStyle.black14Regular
              ),
              const SizedBox(height: 20,),
              WeeklyCalendar(dates: lastSevenDays),
            ],
          );
        }
        else {
          return const Center(child: CircularProgressIndicator());
        }
      }
    );
  }

}