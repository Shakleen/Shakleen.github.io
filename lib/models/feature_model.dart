class FeatureModel {
  final String title;
  final String markdownPath;
  final String? imagePath;

  const FeatureModel({
    required this.title,
    required this.markdownPath,
    this.imagePath,
  });
}
