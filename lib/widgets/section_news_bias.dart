part of '../main.dart';

class _NewsBiasSection extends StatelessWidget {
  const _NewsBiasSection({super.key});

  @override
  Widget build(BuildContext context) {
    return _CaseStudySection(
      index: 3,
      title: "News Outlet Freedom Detection",
      shortDescription: "Measuring Media Bias with Fine-Tuned LLMs",
      logoPaths: [
        'assets/logos/python.svg',
        'assets/logos/pandas.svg',
        'assets/logos/pytorch.svg',
        'assets/logos/git.svg',
      ],
      detailsFilePath: 'assets/markdowns/news_bias.md',
    );
  }
}
