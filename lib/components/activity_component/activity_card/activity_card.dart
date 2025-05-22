import 'package:flutter/material.dart';

class ActivityCard extends StatefulWidget {
  final String imagePath;
  final String activityTitle;
  final List<String> tags;
  final List<String> selectedTags;

  const ActivityCard({
    super.key,
    required this.imagePath,
    required this.activityTitle,
    required this.tags,
    required this.selectedTags,
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

                  return Container(
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
