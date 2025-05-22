class PreferenceModel {
  final String name;
  final List<String> tags;
  bool isSelected;

  PreferenceModel({required this.name, required this.tags, this.isSelected = false});
}
