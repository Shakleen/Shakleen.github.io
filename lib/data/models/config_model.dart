import 'package:my_portfolio_website/data/models/about_model.dart';
import 'package:my_portfolio_website/data/models/assets_model.dart';
import 'package:my_portfolio_website/data/models/case_study_model.dart';
import 'package:my_portfolio_website/data/models/urls_model.dart';

class ConfigModel {
  final String appName;
  final String seedColor;
  final UrlsModel urls;
  final AboutModel about;
  final Map<String, CaseStudyModel> caseStudies;
  final AssetsModel assets;

  const ConfigModel({
    required this.appName,
    required this.seedColor,
    required this.urls,
    required this.about,
    required this.caseStudies,
    required this.assets,
  });

  factory ConfigModel.fromJson(Map<String, dynamic> json) {
    final caseStudiesJson = json['case_studies'] as Map<String, dynamic>;
    final caseStudyKeys = caseStudiesJson.keys.toList();
    final caseStudies = <String, CaseStudyModel>{};
    for (var key in caseStudyKeys) {
      final index = caseStudyKeys.indexOf(key);
      caseStudies[key] = CaseStudyModel.fromJson(caseStudiesJson[key], index);
    }

    return ConfigModel(
      appName: json['app_name'],
      seedColor: json['seed_color'],
      urls: UrlsModel.fromJson(json['urls']),
      about: AboutModel.fromJson(json['about']),
      caseStudies: caseStudies,
      assets: AssetsModel.fromJson(json['assets']),
    );
  }
}
