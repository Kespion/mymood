import 'package:flutter/material.dart';
import 'package:my_mood/components/buttons/blue_button.dart';
import 'package:my_mood/components/textfields/custom_input_textfield.dart';
import 'package:my_mood/pages/login_pages/sign_in_page.dart';

import '../../components/texts/custom_text.dart';
import '../../components/texts/text_styles/custom_text_style.dart';
import '../home_page.dart';

class SignUpPage extends StatelessWidget {

  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(50),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText("Créer mon compte :", CustomTextStyle.black12BoldTitle),
                Container(height: 20),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText("Adresse e-mail", CustomTextStyle.black16Regular),
                      Container(height: 5),
                      CustomInputTextField("Adresse e-mail...", CustomTextStyle.hintText),
                      Container(height: 5),
                      CustomText("Identifiant", CustomTextStyle.black16Regular),
                      Container(height: 5),
                      CustomInputTextField("Identifiant...", CustomTextStyle.hintText),
                      Container(height: 5),
                      CustomText("Mot de passe", CustomTextStyle.black16Regular),
                      Container(height: 5),
                      CustomInputTextField("Mot de passe...", CustomTextStyle.hintText),
                      Container(height: 5),
                      CustomText("Confirmer le mot de passe", CustomTextStyle.black16Regular),
                      Container(height: 5),
                      CustomInputTextField("Confirmer le mot de passe...", CustomTextStyle.hintText),
                    ]
                ),
                Container(height: 20),
                const BlueButton("M'inscrire", HomePage()),
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