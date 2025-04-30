import 'package:flutter/material.dart';

class ActivityCard extends StatefulWidget {
  final String imagePath;
  final String activityTitle;
  final List<String> tags;

  const ActivityCard({
    super.key,
    required this.imagePath,
    required this.activityTitle,
    required this.tags,
  });

  @override
  State<ActivityCard> createState() => _ActivityCardState();
}

class _ActivityCardState extends State<ActivityCard> {
  bool isLiked = false;
  bool isDisliked = false;

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
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
                child: Image.asset(
                  widget.imagePath,
                  width: double.infinity,
                  height: 180,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 10,
                right: 20,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: toggleLike,
                      child: Image.asset(
                        isLiked ? 'res/assets/icons/activity_card/colored_like.png' : 'res/assets/icons/activity_card/empty_like.png',
                        width: 28,
                        height: 28,
                      ),
                    ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: toggleDislike,
                      child: Image.asset(
                        isDisliked ? 'res/assets/icons/activity_card/colored_dislike.png' : 'res/assets/icons/activity_card/empty_dislike.png',
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ],
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
              children: widget.tags
                  .map((tag) => Chip(
                label: Text(tag),
                backgroundColor: Colors.blue.shade50,
                shape: const StadiumBorder(side: BorderSide(color: Colors.blue)),
                avatar: const Icon(Icons.star, size: 16, color: Colors.blue),
              ))
                  .toList(),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
