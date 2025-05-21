import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class DayCard extends StatelessWidget {
  final String imagePath;
  final DateTime date;

  const DayCard({super.key, required this.imagePath, required this.date});

  String formatDayName(String str) {
    str = str[0].toUpperCase() + str.substring(1).replaceAll(".", "");
    return str;
  }

  bool isToday(DateTime date) {
    final now = DateTime.now();
    return date.year == now.year && date.month == now.month && date.day == now.day;
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: isToday(date)
            ? const LinearGradient(
                colors: [
                  Color.fromRGBO(252, 204, 155, 1),
                  Color.fromRGBO(252, 204, 155, 1),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )
            : const LinearGradient(
                colors: [
                  Color.fromRGBO(252, 193, 134, 1),
                  Color.fromRGBO(154, 195, 209, 1),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Container(
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: isToday(date) ? Colors.transparent : Colors.white,
          borderRadius: BorderRadius.circular(26),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              imagePath,
              width: 34,
              height: 34,
            ),
            const SizedBox(height: 10),
            Text(
              DateFormat('d', 'fr_FR').format(date),
              style: TextStyle(
                  color: isToday(date) ? Colors.black : const Color.fromRGBO(154, 195, 209, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.w700
              ),
            ),
            Text(
              formatDayName(DateFormat('E', 'fr_FR').format(date)),
              style: TextStyle(
                  color: isToday(date) ? Colors.black : const Color.fromRGBO(154, 195, 209, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.w400
              ),
            ),
          ],
        ),
      ),
    );
  }

}