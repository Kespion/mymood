import 'package:flutter/material.dart';
import 'package:my_mood/components/user_profile/user_tabview.dart';

import '../../components/header_bar/header_bar.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: UserTabview()
    );
  }
}