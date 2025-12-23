import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio_website/data/models/feature_model.dart';
import 'package:my_portfolio_website/presentation/cubits/case_study_cubit.dart';

class FeatureTab extends StatelessWidget {
  final int index;
  final FeatureModel model;

  const FeatureTab({super.key, required this.index, required this.model});

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
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
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
