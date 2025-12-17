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
      detailsFilePath: 'assets/markdowns/production_ml.md',
    );
  }
}
