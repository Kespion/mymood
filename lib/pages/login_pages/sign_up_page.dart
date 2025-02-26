import 'package:flutter/material.dart';
import 'package:my_mood/components/buttons/containers/blue_container.dart';
import 'package:my_mood/components/textfields/custom_input_textfield.dart';
import 'package:my_mood/components/textfields/form_text_field.dart';
import 'package:my_mood/pages/login_pages/sign_in_page.dart';

import '../../components/texts/custom_text.dart';
import '../../components/texts/text_styles/custom_text_style.dart';
import '../home_page.dart';

class SignUpPage extends StatelessWidget {

  FormTextField emailFtf = FormTextField("Adresse e-mail", CustomTextStyle.black16Regular, CustomTextStyle.hintText);
  FormTextField usernameFtf = FormTextField("Identifiant", CustomTextStyle.black16Regular, CustomTextStyle.hintText);
  FormTextField pwFtf = FormTextField("Mot de passe", CustomTextStyle.black16Regular, CustomTextStyle.hintText);
  FormTextField confirmPwFtf = FormTextField("Confirmer le mot de passe", CustomTextStyle.black16Regular, CustomTextStyle.hintText);

  SignUpPage({super.key});

  bool isFormValid() {
    return emailFtf.customInputTextField.textEditingController.text.isNotEmpty &&
    usernameFtf.customInputTextField.textEditingController.text.isNotEmpty &&
    pwFtf.customInputTextField.textEditingController.text.isNotEmpty &&
    confirmPwFtf.customInputTextField.textEditingController.text.isNotEmpty &&
    pwFtf.customInputTextField.textEditingController.text == confirmPwFtf.customInputTextField.textEditingController.text;
  }

  void dispose() {
    emailFtf.customInputTextField.textEditingController.dispose();
    usernameFtf.customInputTextField.textEditingController.dispose();
    pwFtf.customInputTextField.textEditingController.dispose();
    confirmPwFtf.customInputTextField.textEditingController.dispose();
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
                  CustomText("Créer mon compte :", CustomTextStyle.black20BoldTitle),
                  Container(height: 20),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        emailFtf,
                        Container(height: 5),
                        usernameFtf,
                        Container(height: 5),
                        pwFtf,
                        Container(height: 5),
                        confirmPwFtf,
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
                              pageBuilder: (context, animation1, animation2) => const HomePage(),
                            )
                        );
                      }
                    },
                    child: const BlueContainer("M'inscrire"),
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