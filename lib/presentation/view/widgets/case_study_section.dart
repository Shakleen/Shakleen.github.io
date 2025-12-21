import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';
import 'package:my_portfolio_website/data/models/case_study_model.dart';
import 'package:my_portfolio_website/data/models/feature_model.dart';
import 'package:my_portfolio_website/presentation/cubits/case_study_cubit.dart';
import 'package:my_portfolio_website/presentation/view/widgets/case_study_header.dart';
import 'package:my_portfolio_website/utils/theme_manager.dart';
import 'package:provider/provider.dart';

class CaseStudySection extends StatelessWidget {
  final CaseStudyModel data;

  const CaseStudySection({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CaseStudySectionCubit>(
      create: (BuildContext context) => CaseStudySectionCubit(),
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
        child: Column(
          children: [
            Expanded(
              flex: 20,
              child: CaseStudyHeader(
                number: data.index,
                title: data.title,
                shortDescription: data.problemStatement,
                logoPaths: data.logoPaths,
                features: data.features,
              ),
            ),
            Expanded(
              flex: 80,
              child: _FeatureDescription(features: data.features),
            ),
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
        return Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: _MarkdownWidget(filePath: features[index].markdownPath),
            ),
            Expanded(flex: 4, child: _ImageWidget(feature: features[index])),
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

class _MarkdownWidget extends StatelessWidget {
  final String filePath;

  const _MarkdownWidget({required this.filePath});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: rootBundle.loadString(filePath),
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        if (snapshot.hasData) {
          return Markdown(
            data: snapshot.data!,
            shrinkWrap: true,
            selectable: true,
          );
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
