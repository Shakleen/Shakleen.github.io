part of '../main.dart';

class _PiiSection extends StatelessWidget {
  const _PiiSection({super.key});

  @override
  Widget build(BuildContext context) {
    return _CaseStudySection(
      index: 2,
      title: "Kaggle: PII Data Detection",
      shortDescription: "Protecting Privacy in Student Essays",
      logoPaths: [
        'assets/logos/python.svg',
        'assets/logos/pytorch.svg',
        'assets/logos/huggingface.svg',
        'assets/logos/sklearn.svg',
        'assets/logos/pandas.svg',
        'assets/logos/plotly.svg',
      ],
      problemStatementMdPath: 'assets/markdowns/pii/problem-statement.md',
      features: [
        FeatureModel(
          title: "Award-Winning Performance",
          markdownPath: 'assets/markdowns/pii/award-winning.md',
          lightImgPath: 'assets/diagrams/pii-medal-light.png',
          darkImgPath: 'assets/diagrams/pii-medal-dark.png',
        ),
        FeatureModel(
          title: "Overcoming Extreme Class Imbalance",
          markdownPath: 'assets/markdowns/pii/class-imbalance.md',
          lightImgPath: 'assets/diagrams/pii-label-diagram-light.png',
          darkImgPath: 'assets/diagrams/pii-label-diagram-dark.png',
        ),
        FeatureModel(
          title: "High-Recall PII Extraction",
          markdownPath: 'assets/markdowns/pii/high-recall.md',
          lightImgPath: 'assets/diagrams/pii-flow-light.png',
          darkImgPath: 'assets/diagrams/pii-flow-dark.png',
        ),
      ],
    );
  }
}
