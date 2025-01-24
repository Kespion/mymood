import 'package:flutter/material.dart';
import 'package:my_mood/components/texts/text_styles/custom_text_style.dart';

class BlueButton extends StatelessWidget {

  final String content;

  final Widget widget;

  const BlueButton(this.content, this.widget, {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation1, animation2) => widget,
            )
        );
      },
      child: Container(
        width: 114,
        height: 39,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(26),
          color: const Color.fromRGBO(169, 215, 230, 1),
        ),
        child: Container(
            margin: const EdgeInsets.all(2.5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(26),
            ),
            child: Center(
              child: Text(
                content,
                style: CustomTextStyle.black12Regular,
              ),
            )
        ),
      ),
    );
  }

}