import 'package:flutter/material.dart';

import '../texts/text_styles/custom_text_style.dart';

class CustomInputTextField extends StatelessWidget {

  final String hintText;

  final TextStyle hintStyle;

  CustomInputTextField(this.hintText, this.hintStyle, {super.key});

  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 291,
          height: 37,
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
            child: TextField(
              cursorColor: Colors.black,
              cursorHeight: 15,
              textAlign: TextAlign.start,
              controller: textEditingController,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: hintStyle,
                contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26),
                  borderSide: BorderSide.none,
                ),
              ),
              style: CustomTextStyle.black12Regular,
            ),
          ),
        ),
      ],
    );
  }

}