part of '../main.dart';

class _FlashLearnSection extends StatelessWidget {
  const _FlashLearnSection({super.key});

  @override
  Widget build(BuildContext context) {
    return _CaseStudySection(
      index: 1,
      title: "Flash Learn",
      shortDescription: "AI-Powered Adaptive Learning Platform",
      logoPaths: [
        'assets/logos/python.svg',
        'assets/logos/go.svg',
        'assets/logos/flutter.svg',
        'assets/logos/docker.svg',
      ],
      detailsFilePath: 'assets/markdowns/flash_learn.md',
    );
  }
}
