import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio_website/data/models/feature_model.dart';
import 'package:my_portfolio_website/presentation/cubits/case_study_cubit.dart';

class CaseStudyHeader extends StatelessWidget {
  final int number;
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
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.95),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                _TechStack(logoPaths: logoPaths),
              ],
            ),
            SizedBox(height: 48, child: _FeatureTabBar(features: features)),
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
                _FeatureTab(index: features.indexOf(model), model: model),
          )
          .toList(),
    );
  }
}

class _FeatureTab extends StatelessWidget {
  final int index;
  final FeatureModel model;

  const _FeatureTab({required this.index, required this.model});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CaseStudySectionCubit, int>(
      builder: (context, inViewIndex) {
        late final Color textColor, buttonColor;
        final bool isInView = inViewIndex == index;

        if (isInView) {
          textColor = Theme.of(context).colorScheme.onPrimary;
          buttonColor = Theme.of(context).colorScheme.primary;
        } else {
          textColor = Theme.of(context).colorScheme.onSecondary;
          buttonColor = Theme.of(context).colorScheme.primary.withOpacity(0.6);
        }

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2.0),
          child: SizedBox(
            width: 150,
            child: TextButton(
              onPressed: isInView
                  ? null
                  : () {
                      context.read<CaseStudySectionCubit>().update(index);
                    },
              style: TextButton.styleFrom(backgroundColor: buttonColor),
              child: Text(
                model.title,
                style: Theme.of(
                  context,
                ).textTheme.bodySmall!.copyWith(color: textColor),
                textAlign: TextAlign.left,
                softWrap: true,
              ),
            ),
          ),
        );
      },
    );
  }
}
