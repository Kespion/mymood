import 'package:flutter/material.dart';

class PreferenceCard extends StatelessWidget {
  final String name;
  final bool isSelected;
  final VoidCallback onToggle;

  const PreferenceCard({
    super.key,
    required this.name,
    required this.isSelected,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onToggle,
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: isSelected
              ? null
              : const LinearGradient(
            colors: [
              Color.fromRGBO(252, 193, 134, 1),
              Color.fromRGBO(154, 195, 209, 1),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Container(
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.all(1.5),
          decoration: BoxDecoration(
            color: isSelected
                ? const Color.fromRGBO(252, 193, 134, 1)
                : Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              if (isSelected)
                Image.asset("res/assets/icons/activity_card/check.png"),
              Text(name),
            ],
          ),
        ),
      ),
    );
  }
}
