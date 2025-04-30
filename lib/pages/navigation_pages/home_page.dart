import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_mood/components/activity_component/activity_component.dart';
import 'package:my_mood/components/bottom_navigation_bar/custom_bottom_navigation_bar.dart';
import 'package:my_mood/components/buttons/containers/gradient_container.dart';
import 'package:my_mood/components/header_bar/header_bar.dart';
import 'package:my_mood/components/mood_selector/mood_card/mood_icon.dart';
import 'package:my_mood/components/mood_selector/mood_card/selected_mood.dart';
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
  SvgPicture? _selectedMoodIcon;

  void _handleMoodSelected(SvgPicture moodIcon) {
    setState(() {
      _selectedMoodIcon = moodIcon;
      _showMoodSelector = false;
    });
  }

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
                MoodSelector(onMoodSelected: _handleMoodSelected)
              else if (_selectedMoodIcon != null)
                SelectedMood(_selectedMoodIcon!),

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
              const SizedBox(height: 20),
              const ActivityComponent(activityName: "Loisir"),
              const SizedBox(height: 20),
              const ActivityComponent(activityName: "Repas"),
              const SizedBox(height: 20),
              const ActivityComponent(activityName: "Film/Série"),
            ],
          ),
        ),
      ),
    );
  }
}
