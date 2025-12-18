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
        'assets/logos/pytorch.svg',
        'assets/logos/huggingface.svg',
        'assets/logos/pandas.svg',
        'assets/logos/plotly.svg',
        'assets/logos/sklearn.svg',
      ],
      problemStatementMdPath:
          'assets/markdowns/media-bias/problem-statement.md',
      features: [
        FeatureModel(
          title: "Automated Press Freedom Analysis",
          markdownPath: 'assets/markdowns/media-bias/auto-analysis.md',
        ),
        FeatureModel(
          title: "High-Performance ML & Data Pipelines",
          markdownPath: 'assets/markdowns/media-bias/ml-pipeline.md',
        ),
        FeatureModel(
          title: "Advanced RAG & Statistical Insights",
          markdownPath: 'assets/markdowns/media-bias/advanced-rag.md',
        ),
      ],
    );
  }
}
