import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_mood/components/user_profile/friends/friends_tab_bar_view.dart';
import 'package:my_mood/components/user_profile/my_account/account_tab_bar_view.dart';

import '../texts/text_styles/custom_text_style.dart';

class UserTabview extends StatelessWidget {
  const UserTabview({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: const SizedBox.shrink(),
          title: SvgPicture.asset(
            'res/assets/logos/logo_my_mood.svg',
            width: 73,
            height: 37,
          ),
          centerTitle: true,
          bottom: TabBar(
            dividerColor: Colors.transparent,
            indicatorColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 1,
            tabs: [
              Tab(
                child: Text("Mon compte",
                  style: CustomTextStyle.black16Regular600,
                ),
              ),
              Tab(
                child: Text("Amis",
                  style: CustomTextStyle.black16Regular600,
                ),
              ),
            ],
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: const TabBarView(
              children: [
                AccountTabBarView(),
                FriendsTabBarView()
              ],
            ),
        ),
      );
  }
}
