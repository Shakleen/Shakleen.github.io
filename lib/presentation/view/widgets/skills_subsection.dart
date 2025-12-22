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

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: config.about.skills.values
          .map((val) => _SkillIcon(path: val))
          .toList(),
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
      color: Theme.of(context).colorScheme.secondary,
    );
  }
}
