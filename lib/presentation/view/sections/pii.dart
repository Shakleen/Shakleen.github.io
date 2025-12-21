import 'package:flutter/material.dart';
import 'package:my_portfolio_website/data/models/case_study_model.dart';
import 'package:my_portfolio_website/data/models/feature_model.dart';
import 'package:my_portfolio_website/presentation/view/widgets/case_study_section.dart';

class PiiSection extends StatelessWidget {
  const PiiSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CaseStudySection(
      data: CaseStudyModel(
        index: 3,
        title: "Kaggle: PII Data Detection",
        problemStatement: "Protecting Privacy in Student Essays",
        logoPaths: [
          'assets/logos/python.svg',
          'assets/logos/pytorch.svg',
          'assets/logos/huggingface.svg',
          'assets/logos/sklearn.svg',
          'assets/logos/pandas.svg',
          'assets/logos/plotly.svg',
        ],
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
      ),
    );
  }
}
