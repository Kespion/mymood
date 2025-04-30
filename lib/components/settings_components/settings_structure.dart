import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_mood/components/settings_components/settings_option/settings_option_clickable_text.dart';
import 'package:my_mood/components/settings_components/settings_option/settings_option_menu_dropdown.dart';

import '../texts/text_styles/custom_text_style.dart';

class SettingsStructure extends StatelessWidget {
  const SettingsStructure({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: SettingsOptionMenuDropdown(
              settingsOptionClickableText: SettingsOptionClickableText(
                iconPath: 'res/assets/icons/settings_page/theme.svg',
                title: 'Thème',
                iconSize: 45.0,
                textStyle: CustomTextStyle.black16Regular,
              ),
              dropdownMenuEntries: const [
                DropdownMenuEntry<String>(
                  value: 'system',
                  label: 'Système',
                ),
                DropdownMenuEntry<String>(
                  value: 'dark',
                  label: 'Sombre',
                ),
                DropdownMenuEntry<String>(
                  value: 'light',
                  label: 'Clair',
                ),
              ],
            ),
          ),
          SvgPicture.asset(
            'res/assets/icons/settings_page/line.svg',
            height: 24,
          ),
          Flexible(
            child: SettingsOptionMenuDropdown(
              settingsOptionClickableText: SettingsOptionClickableText(
                iconPath: 'res/assets/icons/settings_page/language.svg',
                title: 'Langue',
                iconSize: 33.0,
                textStyle: CustomTextStyle.black16Regular,
              ),
              dropdownMenuEntries: const [
                DropdownMenuEntry<String>(
                  value: 'fr',
                  label: 'Français',
                ),
                DropdownMenuEntry<String>(
                  value: 'en',
                  label: 'Anglais',
                ),
              ],
            )
          ),
          SvgPicture.asset(
            'res/assets/icons/settings_page/line.svg',
            height: 24,
          ),
          Flexible(
            child: SettingsOptionMenuDropdown(
              settingsOptionClickableText: SettingsOptionClickableText(
                iconPath: 'res/assets/icons/settings_page/notifications.svg',
                title: 'Notification',
                iconSize: 33.0,
                textStyle: CustomTextStyle.black16Regular,
              ),
              dropdownMenuEntries: const [
                DropdownMenuEntry<String>(
                  value: 'fixe',
                  label: 'Fixe',
                ),
                DropdownMenuEntry<String>(
                  value: 'random',
                  label: 'Aléatoire',
                ),
                DropdownMenuEntry<String>(
                  value: 'off',
                  label: 'Désactivé',
                ),
              ],
            ),
          ),
          SvgPicture.asset(
            'res/assets/icons/settings_page/line.svg',
            height: 24,
          ),
          Flexible(
            child: SettingsOptionClickableText(
              iconPath: 'res/assets/icons/settings_page/play_tutorial.svg',
              title: 'Tutoriel',
              iconSize: 29.0,
              textStyle: CustomTextStyle.black16RegularUnderline,
            ),
          ),
          SvgPicture.asset(
            'res/assets/icons/settings_page/line.svg',
            height: 24,
          ),
          Flexible(
            child: SettingsOptionClickableText(
              iconPath: 'res/assets/icons/settings_page/log_out.svg',
              title: 'Déconnexion',
              iconSize: 29.0,
              textStyle: CustomTextStyle.black16RegularUnderline,
            ),
          ),
          SvgPicture.asset(
            'res/assets/icons/settings_page/line.svg',
            height: 24,
          ),
          Flexible(
            child: SettingsOptionClickableText(
              iconPath: 'res/assets/icons/settings_page/delete.svg',
              title: 'Supprimer mon compte',
              iconSize: 38.0,
              textStyle: CustomTextStyle.black16RegularUnderline,
            ),
          ),
        ],
      ),
    );
  }

}