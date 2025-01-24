import 'package:flutter/material.dart';
import 'package:my_mood/components/buttons/blue_button.dart';
import 'package:my_mood/pages/login_pages/sign_in_page.dart';

import '../../components/textfields/custom_input_textfield.dart';
import '../../components/texts/custom_text.dart';
import '../../components/texts/text_styles/custom_text_style.dart';
import '../home_page.dart';

class ForgotPasswordPage extends StatelessWidget {

  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(50),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText("Mot de passe oublié :", CustomTextStyle.black12BoldTitle),
                Container(height: 20),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText("Adresse e-mail", CustomTextStyle.black16Regular),
                      Container(height: 5),
                      CustomInputTextField("Adresse e-mail...", CustomTextStyle.hintText),
                    ]
                ),
                Container(height: 20),
                const BlueButton("Envoyer", HomePage()),
                Container(height: 0),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) => const SignInPage(),
                          )
                      );
                    },
                    child: CustomText("Retour à l'accueil", CustomTextStyle.black14RegularUnderline)
                )
              ],
            ),
          ),
        )
    );
  }

}