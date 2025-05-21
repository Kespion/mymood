import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../activity_card/activity_card.dart';

class ActivitySlider extends StatefulWidget {
  final List<Map<String, dynamic>> activities;

  const ActivitySlider({super.key, required this.activities});

  @override
  State<ActivitySlider> createState() => _ActivitySliderState();

}

class _ActivitySliderState extends State<ActivitySlider> {

  final PageController _controller = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 330,
          child: PageView.builder(
            controller: _controller,
            itemCount: widget.activities.length,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              final activity = widget.activities[index];
              return ActivityCard(
                imagePath: activity["image"],
                activityTitle: activity["title"],
                tags: List<String>.from(activity["tags"]),
              );
            },
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(widget.activities.length, (index) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(horizontal: 5),
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image.asset(
                    _currentPage == index
                        ? 'res/assets/icons/activity_card/orange_colored_circle.png'
                        : 'res/assets/icons/activity_card/orange_empty_circle.png',
                  ).image,
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}