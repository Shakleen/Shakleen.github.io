import 'package:my_portfolio_website/data/models/case_study_model.dart';
import 'package:my_portfolio_website/data/models/feature_model.dart';
import 'package:my_portfolio_website/presentation/cubits/section_cubit.dart';

const String appName = 'Shakleen Ishfar - Portfolio';
const String seedColor = '#4169E1';

const int animationDurationPageScroll = 500;

const String resumeUrl =
    'https://drive.google.com/file/d/1UIMRwmcYXDOc7vyvsVQoTXLc03FwmYqB/view?usp=drive_link';

const String failMessageResumeLink = "Failed to launch URL for resume";

const String errorMessageResumeLink =
    "Error occurred when launching URL for resume";

const flashLearn = CaseStudyModel(
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
  features: <FeatureModel>[
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
);

const productionML = CaseStudyModel(
  index: 2,
  title: "Production ML",
  problemStatement: "",
  logoPaths: [
    'assets/logos/python.svg',
    'assets/logos/pytorch.svg',
    'assets/logos/matlab.svg',
    'assets/logos/opencv.svg',
    'assets/logos/pandas.svg',
    'assets/logos/plotly.svg',
  ],
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
const pii = CaseStudyModel(
  index: 3,
  title: "PII Detection",
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
);

final Map<Section, CaseStudyModel> caseStudyData = const {
  Section.flashLearn: flashLearn,
  Section.prof: productionML,
  Section.pii: pii,
};
