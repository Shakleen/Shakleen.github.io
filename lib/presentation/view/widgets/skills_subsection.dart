import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio_website/data/models/config_model.dart';

class SkillsSubsection extends StatelessWidget {
  const SkillsSubsection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Skills",
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
            color: Theme.of(context).colorScheme.inverseSurface.withAlpha(128),
          ),
        ),
        SizedBox(height: 8),
        _SkillIconBar(),
      ],
    );
  }
}

class _SkillIconBar extends StatelessWidget {
  const _SkillIconBar();

  @override
  Widget build(BuildContext context) {
    final config = context.watch<ConfigModel>();

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final double availableWidth = constraints.maxWidth;
        // Assuming icon width is 24 and spacing is 8.
        // The 24 comes from the _SkillIcon width. The 8 is the spacing.
        final double itemWidthWithSpacing = 24.0 + 16.0;

        int itemsPerRow = (availableWidth / itemWidthWithSpacing).floor();
        if (itemsPerRow == 0)
          itemsPerRow = 1; // Ensure at least one item per row

        final int maxItemsToShow = itemsPerRow * 3; // Limit to 3 rows

        final List<String> skillPaths = config.about.skills.values.toList();
        final List<String> skillsToShow = skillPaths
            .take(maxItemsToShow)
            .toList();

        return Wrap(
          alignment: WrapAlignment.center,
          spacing: 16.0, // Horizontal spacing between items
          runSpacing: 8.0, // Vertical spacing between runs
          children: skillsToShow.map((val) => _SkillIcon(path: val)).toList(),
        );
      },
    );
  }
}

class _SkillIcon extends StatelessWidget {
  final String path;

  const _SkillIcon({required this.path});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      width: 24,
      height: 24,
      fit: BoxFit.contain,
      color: Theme.of(context).colorScheme.primary,
    );
  }
}
