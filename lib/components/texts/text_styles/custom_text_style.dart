import 'package:flutter/material.dart';

class CustomTextStyle {

  static TextStyle black12Regular = const TextStyle(
    color: Colors.black,
    fontSize: 12,
    //fontFamily: 'Quicksand',
    fontWeight: FontWeight.w400
  );

  static TextStyle black14Regular = const TextStyle(
      color: Colors.black,
      fontSize: 14,
      //fontFamily: 'Quicksand',
      fontWeight: FontWeight.w400
  );

  static TextStyle black16Regular = const TextStyle(
      color: Colors.black,
      fontSize: 16,
      //fontFamily: 'Quicksand',
      fontWeight: FontWeight.w400
  );

  static TextStyle black14RegularUnderline = const TextStyle(
    color: Colors.black,
    fontSize: 12,
    //fontFamily: 'Quicksand',
    fontWeight: FontWeight.w400,
    decoration: TextDecoration.underline
  );

  static TextStyle black12BoldTitle = const TextStyle(
      color: Colors.black,
      fontSize: 20,
      //fontFamily: 'Quicksand',
      fontWeight: FontWeight.w700,
  );

  static TextStyle hintText = const TextStyle(
      color: Colors.grey,
      fontSize: 12,
      //fontFamily: 'Quicksand',
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.italic
  );

}