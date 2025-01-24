import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_mood/components/buttons/blue_button.dart';
import 'package:my_mood/components/buttons/gradient_button.dart';
import 'package:my_mood/components/textfields/custom_input_textfield.dart';
import 'package:my_mood/pages/login_pages/forgot_password_page.dart';
import 'package:my_mood/pages/login_pages/sign_up_page.dart';

import '../../components/texts/custom_text.dart';
import '../../components/texts/text_styles/custom_text_style.dart';
import '../home_page.dart';

class SignInPage extends StatelessWidget {

  const SignInPage({super.key});

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
                Container(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText("Identifiant", CustomTextStyle.black16Regular),
                    Container(height: 5),
                    CustomInputTextField("Identifiant...", CustomTextStyle.hintText),
                    Container(height: 5),
                    CustomText("Mot de passe", CustomTextStyle.black16Regular),
                    Container(height: 5),
                    CustomInputTextField("Mot de passe...", CustomTextStyle.hintText),
                  ]
                ),
                Container(height: 15),
                const BlueButton("Me Connecter", HomePage()),
                Container(height: 10),
                CustomText("Pas de compte ? Inscris-toi !", CustomTextStyle.black14Regular),
                Container(height: 10),
                const GradientButton("M'inscrire", SignUpPage()),
                Container(height: 0),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) => const ForgotPasswordPage(),
                          )
                      );
                    },
                    child: CustomText("Mot de passe oublié", CustomTextStyle.black14RegularUnderline)
                )
              ],
            ),
          ),
        )
    );
  }

}