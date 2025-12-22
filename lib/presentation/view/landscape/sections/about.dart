import 'package:flutter/material.dart';
import 'package:my_portfolio_website/presentation/view/widgets/about_description.dart';
import 'package:my_portfolio_website/presentation/view/widgets/profile_picture.dart';
import 'package:my_portfolio_website/presentation/view/widgets/skills_subsection.dart';
import 'package:my_portfolio_website/presentation/view/widgets/socials_subsection.dart';

class LandscapeAboutSection extends StatelessWidget {
  const LandscapeAboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(flex: 40, child: _Introduction()),
          Expanded(flex: 60, child: _Footer()),
        ],
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [AboutDescription(), SkillsSubsection(), SocialsSubsection()],
      ),
    );
  }
}

class _Introduction extends StatelessWidget {
  const _Introduction();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ProfilePicture(),
        Column(
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
                Text(
                  "Shakleen",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
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
          ],
        ),
      ],
    );
  }
}
