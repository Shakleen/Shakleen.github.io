import 'package:flutter/material.dart';
import 'package:my_portfolio_website/data/models/case_study_model.dart';
import 'package:my_portfolio_website/data/models/feature_model.dart';
import 'package:my_portfolio_website/presentation/view/widgets/case_study_section.dart';

class FlashLearnSection extends StatelessWidget {
  const FlashLearnSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CaseStudySection(
      data: CaseStudyModel(
        index: 1,
        title: "Flash Learn",
        problemStatement: "AI-Powered Adaptive Learning Platform",
        logoPaths: [
          'assets/logos/python.svg',
          'assets/logos/go.svg',
          'assets/logos/flutter.svg',
          'assets/logos/postgresql.svg',
          'assets/logos/docker.svg',
          'assets/logos/aws.svg',
        ],
        features: [
          FeatureModel(
            title: "Tackling the forgetting curve",
            markdownPath: 'assets/markdowns/flash-learn/forgetting-curve.md',
            lightImgPath: 'assets/diagrams/fl-ss.png',
            darkImgPath: 'assets/diagrams/fl-ss.png',
          ),
          FeatureModel(
            title: "High performance front & backend",
            markdownPath: 'assets/markdowns/flash-learn/high-performance.md',
          ),
          FeatureModel(
            title: "Scaling with Rigorous Stability",
            markdownPath: 'assets/markdowns/flash-learn/rigorous-stability.md',
            lightImgPath: 'assets/diagrams/fl-cicd-light.png',
            darkImgPath: 'assets/diagrams/fl-cicd-dark.png',
          ),
        ],
      ),
    );
  }
}
