import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_mood/components/activity_component/activity_component.dart';
import 'package:my_mood/components/buttons/containers/gradient_container.dart';
import 'package:my_mood/components/header_bar/header_bar.dart';
import 'package:my_mood/components/mood_selector/mood_card/selected_mood.dart';
import 'package:my_mood/components/mood_selector/mood_selector.dart';
import 'package:my_mood/components/preferences/preference_card.dart';
import 'package:my_mood/components/texts/custom_text.dart';
import 'package:my_mood/components/texts/text_styles/custom_text_style.dart';
import 'package:my_mood/pages/login_pages/sign_in_page.dart';

import '../../components/preferences/preference_model.dart';

class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showMoodSelector = true;
  SvgPicture? _selectedMoodIcon;
  bool _showActivities = false;
  List<String> _activeRecommendations = [];


  void _handleMoodSelected(SvgPicture moodIcon) {
    setState(() {
      _selectedMoodIcon = moodIcon;
      _showMoodSelector = false;
      _showActivities = true;
    });
  }

  final List<Map<String, dynamic>> activitiesLeasures = [
    {
      "image": "res/assets/images/music.png",
      "title": "Écouter de la musique",
      "tags": ["Musique", "Calme", "Émotion"],
      "recommendation": "0"
    },
    {
      "image": "res/assets/images/hiking.png",
      "title": "Faire une balade",
      "tags": ["Nature", "Relaxation"],
      "recommendation": "0"
    },
    {
      "image": "res/assets/images/read_book.png",
      "title": "Lire un livre",
      "tags": ["Imagination", "Calme"],
      "recommendation": "1"
    },
    {
      "image": "res/assets/images/sport.png",
      "title": "Faire du sport",
      "tags": ["Sport", "Énergie", "Santé"],
      "recommendation": "1"
    },
    {
      "image": "res/assets/images/drawing.png",
      "title": "Dessiner",
      "tags": ["Créativité", "Calme", "Concentration"],
      "recommendation": "2"
    },
  ];

  final List<Map<String, dynamic>> activitiesMeals = [
    {
      "image": "res/assets/images/salad.png",
      "title": "Salade composée",
      "tags": ["Légumes", "Frais", "Santé"],
      "recommendation": "0"
    },
    {
      "image": "res/assets/images/carbonara.png",
      "title": "Pâtes carbonara",
      "tags": ["Pâtes", "Crème", "Gourmand", "Italien"],
      "recommendation": "0"
    },
    {
      "image": "res/assets/images/burger_king.png",
      "title": "Burger King",
      "tags": ["Fast-food", "Rapide", "Américain"],
      "recommendation": "1"
    },
    {
      "image": "res/assets/images/sushis.png",
      "title": "Sushis",
      "tags": ["Poisson", "Frais", "Asiatique"],
      "recommendation": "1"

    },
    {
      "image": "res/assets/images/couscous.png",
      "title": "Couscous",
      "tags": ["Épices", "Oriental", "Convivial"],
      "recommendation": "2"
    },
  ];

  final List<Map<String, dynamic>> activitiesMovies = [
    {
      "image": "res/assets/images/harry_potter.png",
      "title": "Harry Potter",
      "tags": ["Fantastique", "Aventure", "Magie"],
      "recommendation": "0"
    },
    {
      "image": "res/assets/images/gladiator.png",
      "title": "Gladiator",
      "tags": ["Action", "Histoire", "Épique"],
      "recommendation": "0"
    },
    {
      "image": "res/assets/images/stranger_things.png",
      "title": "Stranger Things",
      "tags": ["Science-fiction", "Aventure", "Années 80"],
      "recommendation": "1"
    },
    {
      "image": "res/assets/images/it.png",
      "title": "Ça",
      "tags": ["Horreur", "Suspense", "Adaptation"],
      "recommendation": "1"
    },
    {
      "image": "res/assets/images/godfather.png",
      "title": "Le Parrain",
      "tags": ["Drame", "Crime", "Classique"],
      "recommendation": "2"
    },
  ];

  final List<PreferenceModel> _preferences = [
    PreferenceModel(name: "Mes préferences", tags: [
      "Sport", "Créativité", "Calme", "Santé", "Italien", "Frais", "Fantastique", "Horreur"
    ]),
    PreferenceModel(name: "Populaire", tags: [
      "Nature", "Calme", "Sport", "Asiatique", "Fast-food", "Aventure", "Histoire"
    ]),
    PreferenceModel(name: "Découverte", tags: [
      "Magie", "Adaptation", "Crème", "Légumes", "Concentration", "Énergie", "Relaxation"
    ]),
  ];

  List<String> _selectedTags = [];

  void _toggleTagSelection(String tag) {
    setState(() {
      if (_selectedTags.contains(tag)) {
        _selectedTags.remove(tag);
      } else {
        _selectedTags.add(tag);
      }
    });
  }

  void _toggleRecommendation(String recommendationId) {
    setState(() {
      if (_activeRecommendations.contains(recommendationId)) {
        _activeRecommendations.remove(recommendationId);
      } else {
        _activeRecommendations.add(recommendationId);
      }
    });
  }

  List<Map<String, dynamic>> _filterActivities(List<Map<String, dynamic>> allActivities) {
    if (_activeRecommendations.isEmpty) return allActivities;

    return allActivities.where((activity) {
      return _activeRecommendations.contains(activity["recommendation"]);
    }).toList();
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

              if(_showActivities) ...[
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    PreferenceCard(
                      name: "Mes préférences",
                      isSelected: _activeRecommendations.contains("0"),
                      onTap: () => _toggleRecommendation("0"),
                    ),
                    PreferenceCard(
                      name: "Populaire",
                      isSelected: _activeRecommendations.contains("1"),
                      onTap: () => _toggleRecommendation("1"),
                    ),
                    PreferenceCard(
                      name: "Découverte",
                      isSelected: _activeRecommendations.contains("2"),
                      onTap: () => _toggleRecommendation("2"),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                ActivityComponent(
                  activityName: "Loisirs",
                  activities: _filterActivities(activitiesLeasures),
                  selectedTags: _selectedTags,
                  onTagToggle: _toggleTagSelection,
                ),
                ActivityComponent(
                  activityName: "Repas",
                  activities: _filterActivities(activitiesMeals),
                  selectedTags: _selectedTags,
                  onTagToggle: _toggleTagSelection,
                ),
                ActivityComponent(
                  activityName: "Films/Séries",
                  activities: _filterActivities(activitiesMovies),
                  selectedTags: _selectedTags,
                  onTagToggle: _toggleTagSelection,
                ),
              ],

              const SizedBox(height: 15),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    onPressed: () async {
                      final result = await Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) => SignInPage(),
                        ),
                      );

                      if (result is SvgPicture) {
                        setState(() {
                          _selectedMoodIcon = result;
                          _showMoodSelector = false;
                          _showActivities = true;
                        });
                      }
                    },
                    child: const GradientContainer("Retour"),
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
