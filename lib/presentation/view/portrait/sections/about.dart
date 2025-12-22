import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio_website/data/models/config_model.dart';
import 'package:my_portfolio_website/presentation/view/widgets/profile_picture.dart';
import 'package:my_portfolio_website/presentation/view/widgets/skills_subsection.dart';
import 'package:my_portfolio_website/presentation/view/widgets/socials_subsection.dart';

class PortraitAboutSection extends StatelessWidget {
  const PortraitAboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.92,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [_Introduction(), _Description(), _Footer()],
      ),
    );
  }
}

class _Footer extends StatelessWidget {
  const _Footer();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SkillsSubsection(),
          SizedBox(height: 16),
          SocialsSubsection(),
        ],
      ),
    );
  }
}

class _Introduction extends StatelessWidget {
  const _Introduction();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Hello! I'm",
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Shakleen", style: Theme.of(context).textTheme.headlineLarge),
            const SizedBox(width: 4),
            Text(
              "Ishfar",
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ],
        ),
        Text("AI Engineer", style: Theme.of(context).textTheme.titleLarge),
        SizedBox(height: 16),
        ProfilePicture(),
      ],
    );
  }
}

class _Description extends StatelessWidget {
  const _Description();

  @override
  Widget build(BuildContext context) {
    final config = context.watch<ConfigModel>();

    return Text(
      config.about.description,
      style: Theme.of(context).textTheme.bodyMedium,
      textAlign: TextAlign.center,
    );
  }
}
