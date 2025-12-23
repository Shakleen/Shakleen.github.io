import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio_website/data/models/feature_model.dart';
import 'package:my_portfolio_website/presentation/view/widgets/feature_tab.dart';
import 'package:my_portfolio_website/presentation/view/widgets/title_with_link.dart';

class PortraitCaseStudyHeader extends StatelessWidget {
  final int number;
  final String url;
  final String title;
  final String shortDescription;
  final List<String> logoPaths;
  final List<FeatureModel> features;

  const PortraitCaseStudyHeader({
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CaseStudyTitleWithLink(title: title, url: url),
                _TechStack(logoPaths: logoPaths),
              ],
            ),
          ),
          SizedBox(height: 48, child: _FeatureTabBar(features: features)),
        ],
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
                width: 16,
                height: 16,
                fit: BoxFit.contain,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          )
          .toList(),
    );
  }
}

class _FeatureTabBar extends StatelessWidget {
  const _FeatureTabBar({required this.features});

  final List<FeatureModel> features;

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      children: features
          .map(
            (FeatureModel model) =>
                FeatureTab(index: features.indexOf(model), model: model),
          )
          .toList(),
    );
  }
}
