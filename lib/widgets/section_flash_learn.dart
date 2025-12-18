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
          'assets/markdowns/flash-learn-problem-statement.md',
      keyOutcomesMdPath: 'assets/markdowns/flash-learn-key-outcomes.md',
      lessonsLearntMdPath: 'assets/markdowns/flash-learn-lessons-learnt.md',
      technicalDetailMdPath:
          'assets/markdowns/flash-learn-technical-details.md',
    );
  }
}
