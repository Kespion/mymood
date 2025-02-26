import 'package:flutter/cupertino.dart';

import '../../texts/text_styles/custom_text_style.dart';

class BlueContainer extends StatelessWidget {

  final String content;

  const BlueContainer(this.content, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }

}