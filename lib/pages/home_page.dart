import 'package:flutter/material.dart';
import 'package:my_mood/components/buttons/containers/gradient_container.dart';
import 'package:my_mood/components/header_bar/header_bar.dart';
import 'package:my_mood/components/mood_selector/mood_selector.dart';
import 'package:my_mood/components/texts/custom_text.dart';
import 'package:my_mood/components/texts/text_styles/custom_text_style.dart';
import 'package:my_mood/pages/login_pages/sign_in_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showMoodSelector = true;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: const HeaderBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText("Coucou Marine,", CustomTextStyle.black20BoldTitle),
              const SizedBox(height: 15),

              if (_showMoodSelector)
                const MoodSelector(),
                const SizedBox(height: 15),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) => SignInPage(),
                        ),
                      );
                    },
                    child: const GradientContainer("Retour"),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        _showMoodSelector = !_showMoodSelector;
                      });
                    },
                    child: const GradientContainer("Hide/Show"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}