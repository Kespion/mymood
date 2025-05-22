import 'package:flutter/material.dart';

class PreferenceCard extends StatelessWidget {
  final String name;
  final bool isSelected;
  final VoidCallback onTap;

  const PreferenceCard({
    super.key,
    required this.name,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: !isSelected ? const LinearGradient(
            colors: [
              Color.fromRGBO(252, 193, 134, 1),
              Color.fromRGBO(154, 195, 209, 1),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ) : null,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Container(
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: isSelected ? const Color.fromRGBO(252, 193, 134, 1) : Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
