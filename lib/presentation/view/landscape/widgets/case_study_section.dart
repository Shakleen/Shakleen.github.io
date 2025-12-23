import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio_website/data/models/case_study_model.dart';
import 'package:my_portfolio_website/data/models/feature_model.dart';
import 'package:my_portfolio_website/presentation/cubits/case_study_cubit.dart';
import 'package:my_portfolio_website/presentation/view/landscape/widgets/case_study_header.dart';
import 'package:my_portfolio_website/presentation/view/widgets/case_study_image.dart';
import 'package:my_portfolio_website/presentation/view/widgets/markdown.dart';

class LandscapeCaseStudySection extends StatefulWidget {
  final CaseStudyModel data;

  const LandscapeCaseStudySection({super.key, required this.data});

  @override
  State<LandscapeCaseStudySection> createState() =>
      _LandscapeCaseStudySectionState();
}

class _LandscapeCaseStudySectionState extends State<LandscapeCaseStudySection>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider<CaseStudySectionCubit>(
      create: (BuildContext context) => CaseStudySectionCubit(),
      child: Column(
        children: [
          const Divider(height: 32),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Row(
              children: [
                Expanded(
                  flex: 17,
                  child: LandscapeCaseStudyHeader(
                    url: widget.data.url,
                    number: widget.data.index,
                    title: widget.data.title,
                    shortDescription: widget.data.problemStatement,
                    logoPaths: widget.data.logoPaths,
                    features: widget.data.features,
                  ),
                ),
                Expanded(
                  flex: 83,
                  child: _FeatureDescription(features: widget.data.features),
                ),
              ],
            ),
          ),
        ],
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * 1.5,
              ),
              child: MarkdownWidget(filePath: features[index].markdownPath),
            ),
            Container(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * 0.5,
              ),
              child: ImageWidget(feature: features[index]),
            ),
          ],
        );
      },
    );
  }
}
