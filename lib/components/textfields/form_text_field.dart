import 'package:flutter/cupertino.dart';

import '../texts/custom_text.dart';
import 'custom_input_textfield.dart';

class FormTextField extends StatelessWidget {

  final String content;
  final TextStyle textStyle, hintTextStyle;

  FormTextField(this.content, this.textStyle, this.hintTextStyle, {super.key});

  late CustomInputTextField customInputTextField;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(content, textStyle),
        Container(height: 5),
        customInputTextField = CustomInputTextField("$content...", hintTextStyle)
      ],
    );
  }

}