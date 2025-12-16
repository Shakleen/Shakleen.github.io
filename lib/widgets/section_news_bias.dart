part of '../main.dart';

class _NewsBiasSection extends StatelessWidget {
  const _NewsBiasSection({super.key});

  @override
  Widget build(BuildContext context) {
    return _CaseStudySection(
      index: 3,
      title: "News Outlet Freedom Detection",
      shortDescription: "Measuring Media Bias with Fine-Tuned LLMs",
      techStack: [
        FontAwesome.python_brand,
        FontAwesome.golang_brand,
        BoxIcons.bxl_flutter,
        FontAwesome.docker_brand,
      ],
      detailsFilePath: 'assets/markdowns/news_bias.md',
    );
  }
}
