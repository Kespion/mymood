import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_mood/components/buttons/gradient_button.dart';
import 'package:my_mood/pages/login_pages/sign_in_page.dart';

class HomePage extends StatelessWidget {

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(50),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'res/assets/logos/logo_my_mood.svg',
                  width: 275,
                  height: 140,
                ),
                Container(height: 100),
                const GradientButton("Retour", SignInPage())
              ],
            )
          ),
        )
    );
  }

}