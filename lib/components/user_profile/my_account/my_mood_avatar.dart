import 'package:flutter/cupertino.dart';

class MyMoodAvatar extends StatelessWidget {
  const MyMoodAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {  },
      child: SizedBox(
        height: 70,
        width: 70,
        child: Stack(
          children: [
            Image.asset(
              'res/assets/icons/user_profile/generic_avatar.png',
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Image.asset(
                'res/assets/icons/user_profile/add_pic_button.png',
              ),
            )
          ]
        ),
      ),
    );
  }

}