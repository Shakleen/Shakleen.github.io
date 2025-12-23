import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio_website/data/models/case_study_model.dart';
import 'package:my_portfolio_website/data/models/feature_model.dart';
import 'package:my_portfolio_website/presentation/cubits/case_study_cubit.dart';
import 'package:my_portfolio_website/presentation/view/portrait/widgets/case_study_header.dart';
import 'package:my_portfolio_website/presentation/view/widgets/case_study_image.dart';
import 'package:my_portfolio_website/presentation/view/widgets/markdown.dart';

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
              url: data.url,
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
            ImageWidget(feature: features[index]),
          ],
        );
      },
    );
  }
}
