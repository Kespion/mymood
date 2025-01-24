import 'package:flutter/material.dart';
import 'package:my_mood/components/texts/text_styles/custom_text_style.dart';

class GradientButton extends StatelessWidget {

  final String content;

  final Widget widget;

  const GradientButton(this.content, this.widget, {super.key});

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
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(252, 193, 134, 1),
              Color.fromRGBO(154, 195, 209, 1),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Container(
          margin: const EdgeInsets.all(2.5),
          decoration: BoxDecoration(
            color: Colors.white,
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