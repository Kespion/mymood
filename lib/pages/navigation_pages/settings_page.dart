import 'package:flutter/material.dart';
import 'package:my_mood/components/settings_components/settings_structure.dart';

import '../../components/header_bar/header_bar.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: HeaderBar(),
      body: SettingsStructure()
    );
  }
}