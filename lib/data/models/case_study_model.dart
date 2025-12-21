import 'package:my_portfolio_website/data/models/feature_model.dart';

class CaseStudyModel {
  final int index;
  final String title;
  final String problemStatement;
  final List<String> logoPaths;
  final List<FeatureModel> features;

  CaseStudyModel({
    required this.index,
    required this.title,
    required this.problemStatement,
    required this.logoPaths,
    required this.features,
  });
}
