import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio_website/data/models/case_study_model.dart';
import 'package:my_portfolio_website/data/models/feature_model.dart';
import 'package:my_portfolio_website/presentation/cubits/case_study_cubit.dart';
import 'package:my_portfolio_website/presentation/view/portrait/widgets/case_study_header.dart';
import 'package:my_portfolio_website/presentation/view/widgets/markdown.dart';
import 'package:my_portfolio_website/utils/theme_manager.dart';
import 'package:provider/provider.dart';

class PortraitCaseStudySection extends StatelessWidget {
  final CaseStudyModel data;

  const PortraitCaseStudySection({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CaseStudySectionCubit>(
      create: (BuildContext context) => CaseStudySectionCubit(),
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
        child: Column(
          children: [
            Divider(height: 32),
            PortraitCaseStudyHeader(
              number: data.index,
              title: data.title,
              shortDescription: data.problemStatement,
              logoPaths: data.logoPaths,
              features: data.features,
            ),
            _FeatureDescription(features: data.features),
          ],
        ),
      ),
    );
  }
}

class _FeatureDescription extends StatelessWidget {
  const _FeatureDescription({required this.features});

  final List<FeatureModel> features;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CaseStudySectionCubit, int>(
      builder: (context, index) {
        return Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MarkdownWidget(filePath: features[index].markdownPath),
            _ImageWidget(feature: features[index]),
          ],
        );
      },
    );
  }
}

class _ImageWidget extends StatelessWidget {
  final FeatureModel feature;

  const _ImageWidget({required this.feature});

  @override
  Widget build(BuildContext context) {
    final themeManager = Provider.of<ThemeManager>(context);
    String? imagePath;

    if (themeManager.themeMode == ThemeMode.dark) {
      imagePath = feature.darkImgPath ?? feature.lightImgPath;
    } else {
      imagePath = feature.lightImgPath ?? feature.darkImgPath;
    }

    if (imagePath == null) {
      return Placeholder(color: Colors.green);
    }

    return Image.asset(imagePath, fit: BoxFit.contain);
  }
}
