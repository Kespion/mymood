import 'package:flutter/material.dart';
import 'package:my_mood/components/buttons/containers/blue_container.dart';
import 'package:my_mood/pages/login_pages/sign_in_page.dart';

import '../../components/textfields/form_text_field.dart';
import '../../components/texts/custom_text.dart';
import '../../components/texts/text_styles/custom_text_style.dart';

class ForgotPasswordPage extends StatelessWidget {

  FormTextField emailFtf = FormTextField("Adresse e-mail", CustomTextStyle.black16Regular, CustomTextStyle.hintText);

  ForgotPasswordPage({super.key});

  bool isFormValid() {
    return emailFtf.customInputTextField.textEditingController.text.isNotEmpty;
  }

  void dispose() {
    emailFtf.customInputTextField.textEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(50),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText("Mot de passe oublié :", CustomTextStyle.black20BoldTitle),
                  Container(height: 20),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        emailFtf,
                      ]
                  ),
                  Container(height: 20),
                  MaterialButton(
                    onPressed: () {
                      if (isFormValid()) {
                        dispose();
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation1, animation2) => SignInPage(),
                            )
                        );
                      }
                    },
                    child: const BlueContainer("Envoyer"),
                  ),
                  Container(height: 0),
                  TextButton(
                      onPressed: () {
                        dispose();
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation1, animation2) => SignInPage(),
                            )
                        );
                      },
                      child: CustomText("Retour à l'accueil", CustomTextStyle.black14RegularUnderline)
                  )
                ],
              ),
            ),
          ),
        )
    );
  }

}