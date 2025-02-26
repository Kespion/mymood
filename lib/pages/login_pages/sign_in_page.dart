import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_mood/components/buttons/containers/blue_container.dart';
import 'package:my_mood/components/buttons/containers/gradient_container.dart';
import 'package:my_mood/pages/login_pages/forgot_password_page.dart';
import 'package:my_mood/pages/login_pages/sign_up_page.dart';

import '../../components/textfields/form_text_field.dart';
import '../../components/texts/custom_text.dart';
import '../../components/texts/text_styles/custom_text_style.dart';
import '../../config/utils.dart';
import '../home_page.dart';

class SignInPage extends StatelessWidget {

  FormTextField idFtf = FormTextField("Identifiant", CustomTextStyle.black16Regular, CustomTextStyle.hintText);
  FormTextField pwFtf = FormTextField("Mot de passe", CustomTextStyle.black16Regular, CustomTextStyle.hintText);

  SignInPage({super.key});

  bool isFormValid() {
    //return idFtf.customInputTextField.textEditingController.text.isNotEmpty
    //    && idFtf.customInputTextField.textEditingController.text == Utils.ADMIN_USERNAME
    //    && pwFtf.customInputTextField.textEditingController.text.isNotEmpty
    //    && pwFtf.customInputTextField.textEditingController.text == Utils.ADMIN_PASSWORD;
    return true;
  }

  void dispose() {
    idFtf.customInputTextField.textEditingController.dispose();
    pwFtf.customInputTextField.textEditingController.dispose();
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
                  SvgPicture.asset(
                    'res/assets/logos/logo_my_mood.svg',
                    width: 275,
                    height: 140,
                  ),
                  Container(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      idFtf,
                      Container(height: 5),
                      pwFtf,
                    ]
                  ),
                  Container(height: 15),
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
                    child: const BlueContainer("Me connecter"),
                  ),
                  Container(height: 10),
                  CustomText("Pas de compte ? Inscris-toi !", CustomTextStyle.black14Regular),
                  Container(height: 10),
                  MaterialButton(
                    onPressed: () {
                      dispose();
                      Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) => SignUpPage(),
                          )
                      );
                    },
                    child: const GradientContainer("M'inscrire"),
                  ),
                  Container(height: 0),
                  TextButton(
                      onPressed: () {
                        dispose();
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation1, animation2) => ForgotPasswordPage(),
                            )
                        );
                      },
                      child: CustomText("Mot de passe oublié", CustomTextStyle.black14RegularUnderline)
                  )
                ],
              ),
            ),
          ),
        )
    );
  }

}