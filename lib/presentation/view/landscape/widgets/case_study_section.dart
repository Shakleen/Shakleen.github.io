import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';
import 'package:my_portfolio_website/data/models/case_study_model.dart';
import 'package:my_portfolio_website/data/models/feature_model.dart';
import 'package:my_portfolio_website/presentation/cubits/case_study_cubit.dart';
import 'package:my_portfolio_website/presentation/view/landscape/widgets/case_study_header.dart';
import 'package:my_portfolio_website/utils/theme_manager.dart';
import 'package:provider/provider.dart';

class LandscapeCaseStudySection extends StatelessWidget {
  final CaseStudyModel data;

  const LandscapeCaseStudySection({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CaseStudySectionCubit>(
      create: (BuildContext context) => CaseStudySectionCubit(),
      child: Column(
        children: [
          Divider(height: 32),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Row(
              children: [
                Expanded(
                  flex: 17,
                  child: LandscapeCaseStudyHeader(
                    number: data.index,
                    title: data.title,
                    shortDescription: data.problemStatement,
                    logoPaths: data.logoPaths,
                    features: data.features,
                  ),
                ),
                Expanded(
                  flex: 83,
                  child: _FeatureDescription(features: data.features),
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
            _MarkdownWidget(filePath: features[index].markdownPath),
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

    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.5,
      ),
      child: Image.asset(imagePath, fit: BoxFit.contain),
    );
  }
}

class _MarkdownWidget extends StatelessWidget {
  final String filePath;

  const _MarkdownWidget({required this.filePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 1.5,
      ),
      child: FutureBuilder(
        future: rootBundle.loadString(filePath),
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          if (snapshot.hasData) {
            return Markdown(
              data: snapshot.data!,
              shrinkWrap: true,
              selectable: false,
            );
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
