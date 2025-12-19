part of '../main.dart';

class _ProfessionalSection extends StatelessWidget {
  const _ProfessionalSection({super.key});

  @override
  Widget build(BuildContext context) {
    return _CaseStudySection(
      index: 3,
      title: "News Outlet Freedom Detection",
      shortDescription: "Measuring Media Bias with Fine-Tuned LLMs",
      logoPaths: [
        'assets/logos/python.svg',
        'assets/logos/pytorch.svg',
        'assets/logos/matlab.svg',
        'assets/logos/opencv.svg',
        'assets/logos/pandas.svg',
        'assets/logos/plotly.svg',
      ],
      problemStatementMdPath:
          'assets/markdowns/professional/problem-statement.md',
      features: [
        FeatureModel(
          title: "AI Engineer at startup",
          markdownPath: 'assets/markdowns/professional/doc-intelli.md',
        ),
        FeatureModel(
          title: "Software Engineer at Samsung",
          markdownPath: 'assets/markdowns/professional/smart-watch.md',
        ),
        FeatureModel(
          title: "Research Assistant at URMC",
          markdownPath: 'assets/markdowns/professional/bio-automation.md',
        ),
      ],
    );
  }
}
