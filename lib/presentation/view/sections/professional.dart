import 'package:flutter/material.dart';
import 'package:my_portfolio_website/data/models/feature_model.dart';
import 'package:my_portfolio_website/presentation/view/widgets/case_study_section.dart';

class ProfessionalSection extends StatelessWidget {
  const ProfessionalSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CaseStudySection(
      index: 2,
      title: "Production ML",
      shortDescription: "",
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
          lightImgPath: 'assets/diagrams/credit_risk_light.png',
          darkImgPath: 'assets/diagrams/credit_risk_dark.png',
        ),
        FeatureModel(
          title: "Software Engineer at Samsung",
          markdownPath: 'assets/markdowns/professional/smart-watch.md',
        ),
        FeatureModel(
          title: "Research Assistant at URMC",
          markdownPath: 'assets/markdowns/professional/bio-automation.md',
          lightImgPath: 'assets/diagrams/bio_comp_light.png',
          darkImgPath: 'assets/diagrams/bio_comp_dark.png',
        ),
      ],
    );
  }
}
