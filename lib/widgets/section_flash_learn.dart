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
        'assets/logos/postgresql.svg',
        'assets/logos/docker.svg',
        'assets/logos/aws.svg',
      ],
      problemStatementMdPath:
          'assets/markdowns/flash-learn/problem-statement.md',
      features: [
        FeatureModel(
          title: "Tackling the forgetting curve",
          markdownPath: 'assets/markdowns/flash-learn/forgetting-curve.md',
        ),
        FeatureModel(
          title: "High performance front & backend",
          markdownPath: 'assets/markdowns/flash-learn/high-performance.md',
        ),
        FeatureModel(
          title: "Scaling with Rigorous Stability",
          markdownPath: 'assets/markdowns/flash-learn/rigorous-stability.md',
        ),
      ],
    );
  }
}
