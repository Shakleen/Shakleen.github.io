class FeatureModel {
  final String title;
  final String markdownPath;
  final String? lightImgPath;
  final String? darkImgPath;

  const FeatureModel({
    required this.title,
    required this.markdownPath,
    this.lightImgPath,
    this.darkImgPath,
  });

  factory FeatureModel.fromJson(Map<String, dynamic> json) {
    return FeatureModel(
      title: json['title'],
      markdownPath: json['markdownPath'],
      lightImgPath: json['lightImgPath'],
      darkImgPath: json['darkImgPath'],
    );
  }
}