import 'package:my_portfolio_website/data/models/feature_model.dart';

class CaseStudyModel {
  final String url;
  final int index;
  final String title;
  final String problemStatement;
  final List<String> logoPaths;
  final List<FeatureModel> features;

  const CaseStudyModel({
    required this.url,
    required this.index,
    required this.title,
    required this.problemStatement,
    required this.logoPaths,
    required this.features,
  });

  factory CaseStudyModel.fromJson(Map<String, dynamic> json, int index) {
    return CaseStudyModel(
      index: index,
      url: json['url'],
      title: json['title'],
      problemStatement: json['problemStatement'],
      logoPaths: List<String>.from(json['logoPaths']),
      features: (json['features'] as List)
          .map((featureJson) => FeatureModel.fromJson(featureJson))
          .toList(),
    );
  }
}

