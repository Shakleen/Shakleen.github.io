part of '../main.dart';

class _ProductionMLSection extends StatelessWidget {
  const _ProductionMLSection({super.key});

  @override
  Widget build(BuildContext context) {
    return _CaseStudySection(
      index: 2,
      title: "Production ML",
      shortDescription: "Production OCR & Financial Document Parsing",
      techStack: [
        FontAwesome.python_brand,
        FontAwesome.golang_brand,
        BoxIcons.bxl_flutter,
        FontAwesome.docker_brand,
      ],
      detailsFilePath: 'assets/markdowns/production_ml.md',
    );
  }
}
