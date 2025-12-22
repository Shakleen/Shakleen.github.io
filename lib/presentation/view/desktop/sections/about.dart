import 'package:flutter/material.dart';
import 'package:my_portfolio_website/presentation/view/widgets/about_description.dart';
import 'package:my_portfolio_website/presentation/view/widgets/profile_picture.dart';
import 'package:my_portfolio_website/presentation/view/widgets/skills_subsection.dart';
import 'package:my_portfolio_website/presentation/view/widgets/socials_subsection.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 650,
        height: 400,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _Bio(),
            AboutDescription(),
            SkillsSubsection(),
            SocialsSubsection(),
          ],
        ),
      ),
    );
  }
}

class _Bio extends StatelessWidget {
  const _Bio();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ProfilePicture(),
        SizedBox(width: 32),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello! I'm",
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            Row(
              children: [
                Text(
                  "Shakleen",
                  style: Theme.of(
                    context,
                  ).textTheme.headlineLarge!.copyWith(fontSize: 64),
                ),
                const SizedBox(width: 4),
                Text(
                  "Ishfar",
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 64,
                  ),
                ),
              ],
            ),
            Text(
              "AI Engineer",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
      ],
    );
  }
}
