import 'package:flutter/material.dart';
import 'dart:math';

class ActivityCard extends StatefulWidget {
  final String imagePath;
  final String activityTitle;
  final List<String> tags;
  final List<String> selectedTags;
  final String recommendation;
  final Function(String) onTagToggle;

  const ActivityCard({
    super.key,
    required this.imagePath,
    required this.activityTitle,
    required this.tags,
    required this.selectedTags,
    required this.recommendation, required this.onTagToggle,
  });

  @override
  State<ActivityCard> createState() => _ActivityCardState();
}

class _ActivityCardState extends State<ActivityCard> with AutomaticKeepAliveClientMixin {
  bool isLiked = false;
  bool isDisliked = false;

  @override
  bool get wantKeepAlive => true;

  void toggleLike() {
    setState(() {
      isLiked = !isLiked;
      if (isLiked) isDisliked = false;
    });
  }

  void toggleDislike() {
    setState(() {
      isDisliked = !isDisliked;
      if (isDisliked) isLiked = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final random = Random();

    final String recommendation =
        widget.recommendation == "0" ? "Mes préférences" :
        widget.recommendation == "1" ? "${60 + random.nextInt(250 - 60 + 1)} personnes aiment cette activité" :
        widget.recommendation == "2" ? "Découverte" : "";

    super.build(context);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  widget.imagePath,
                  width: double.infinity,
                  height: 180,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 10,
                  right: 20,
                  child: GestureDetector(
                    onTap: toggleDislike,
                    child: Image.asset(
                      isDisliked
                          ? 'res/assets/icons/activity_card/heart_liked.png'
                          : 'res/assets/icons/activity_card/heart_empty.png',
                      width: 32,
                      height: 32,
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(240, 239, 239, 0.9),
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Text(recommendation,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        )),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 4),
              child: Text(
                widget.activityTitle,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Wrap(
                spacing: 10,
                children: widget.tags.map((tag) {
                  final isSelected = widget.selectedTags.contains(tag);
                  return GestureDetector(
                    onTap: () => widget.onTagToggle(tag),
                    child: Container(
                      decoration: isSelected
                          ? BoxDecoration(
                        color: const Color.fromRGBO(169, 215, 230, 1),
                        borderRadius: BorderRadius.circular(20),
                      )
                          : BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(252, 193, 134, 1),
                            Color.fromRGBO(154, 195, 209, 1),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.all(1.5),
                      child: Container(
                        decoration: BoxDecoration(
                          color: isSelected ? const Color.fromRGBO(169, 215, 230, 1) : Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            if (isSelected) ...[
                              const Icon(Icons.star, size: 16, color: Colors.black),
                              const SizedBox(width: 5),
                            ],
                            Text(tag, style: const TextStyle(color: Colors.black)),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              )
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

}
