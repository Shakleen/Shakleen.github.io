part of '../main.dart';

class _ProductionMLSection extends StatelessWidget {
  const _ProductionMLSection({super.key});

  @override
  Widget build(BuildContext context) {
    return _CaseStudySection(
      index: 2,
      title: "Production ML",
      shortDescription: "Production OCR & Financial Document Parsing",
      logoPaths: [
        'assets/logos/python.svg',
        'assets/logos/pandas.svg',
        'assets/logos/pytorch.svg',
        'assets/logos/docker.svg',
        'assets/logos/kubernetes.svg',
      ],
      problemStatementMdPath:
          'assets/markdown/flash-learn-problem-statement.md',
      keyOutcomesMdPath: 'assets/markdown/flash-learn-key-outcomes.md',
      lessonsLearntMdPath: 'assets/markdown/flash-learn-lessons-learnt.md',
      technicalDetailMdPath: 'assets/markdown/flash-learn-technical-details.md',
    );
  }
}
