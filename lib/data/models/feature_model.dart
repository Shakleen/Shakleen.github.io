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
}
