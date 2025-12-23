import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio_website/data/models/feature_model.dart';
import 'package:my_portfolio_website/presentation/view/widgets/feature_tab.dart';
import 'package:my_portfolio_website/presentation/view/widgets/title_with_link.dart';

class CaseStudyHeader extends StatelessWidget {
  final int number;
  final String url;
  final String title;
  final String shortDescription;
  final List<String> logoPaths;
  final List<FeatureModel> features;

  const CaseStudyHeader({
    super.key,
    required this.number,
    required this.title,
    required this.shortDescription,
    required this.logoPaths,
    required this.features,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.95),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _SubTitle(text: "Case Study #$number: $shortDescription"),
                _SubTitle(text: "Technology Stack"),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CaseStudyTitleWithLink(title: title, url: url),
                _TechStack(logoPaths: logoPaths),
              ],
            ),
            _FeatureTabBar(features: features),
          ],
        ),
      ),
    );
  }
}

class _TechStack extends StatelessWidget {
  const _TechStack({required this.logoPaths});

  final List<String> logoPaths;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: logoPaths
          .map(
            (String path) => Container(
              margin: const EdgeInsets.only(left: 8.0),
              child: SvgPicture.asset(
                path,
                width: 28,
                height: 28,
                fit: BoxFit.contain,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          )
          .toList(),
    );
  }
}

class _SubTitle extends StatelessWidget {
  const _SubTitle({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.bodySmall);
  }
}

class _FeatureTabBar extends StatelessWidget {
  const _FeatureTabBar({required this.features});

  final List<FeatureModel> features;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: features
          .map(
            (FeatureModel model) =>
                FeatureTab(index: features.indexOf(model), model: model),
          )
          .toList(),
    );
  }
}
