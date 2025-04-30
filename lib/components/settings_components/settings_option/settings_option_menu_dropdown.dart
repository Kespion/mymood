import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_mood/components/settings_components/settings_option/settings_option_clickable_text.dart';

import '../../texts/custom_text.dart';
import '../../texts/text_styles/custom_text_style.dart';

class SettingsOptionMenuDropdown extends StatefulWidget {
  final SettingsOptionClickableText settingsOptionClickableText;
  final List<DropdownMenuEntry<String>> dropdownMenuEntries;

  const SettingsOptionMenuDropdown({
    super.key,
    required this.settingsOptionClickableText,
    required this.dropdownMenuEntries,
  });

  @override
  State<SettingsOptionMenuDropdown> createState() => _SettingsOptionMenuDropdownState();

}

class _SettingsOptionMenuDropdownState extends State<SettingsOptionMenuDropdown> {
  String? selectedValue;

  @override
  void initState() {
    super.initState();
    if (widget.dropdownMenuEntries.isNotEmpty) {
      selectedValue = widget.dropdownMenuEntries.first.value;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        widget.settingsOptionClickableText,
        const SizedBox(width: 25),
        Flexible(
          child: DropdownMenu<String>(
            inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  color: Colors.black,
                  width: 1,
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            ),
            selectedTrailingIcon: SvgPicture.asset(
              'res/assets/icons/settings_page/trailing_icon.svg',
              width: 14,
              height: 9,
            ),
            trailingIcon: SvgPicture.asset(
              'res/assets/icons/settings_page/trailing_icon.svg',
              width: 14,
              height: 9,
            ),
            menuStyle: MenuStyle(
              backgroundColor: MaterialStateProperty.all(
                Colors.white,
              ),
              side: MaterialStateProperty.all(
                const BorderSide(
                  color: Colors.black,
                  width: 1,
                ),
              ),
              visualDensity: VisualDensity.standard,
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: const BorderSide(
                    color: Color(0xFF000000),
                    width: 1,
                  ),
                ),
              ),
            ),
            initialSelection: selectedValue,
            onSelected: (value) {
              if (value != null) {
                setState(() {
                  selectedValue = value;
                });
              }
            },
            dropdownMenuEntries: widget.dropdownMenuEntries,
          ),
        ),
      ],
    );
  }
}
