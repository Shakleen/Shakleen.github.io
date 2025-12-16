part of '../main.dart';

class _FlashLearnSection extends StatelessWidget {
  const _FlashLearnSection({super.key});

  @override
  Widget build(BuildContext context) {
    return _CaseStudySection(
      index: 1,
      title: "Flash Learn",
      shortDescription: "AI-Powered Adaptive Learning Platform",
      techStack: [
        FontAwesome.python_brand,
        FontAwesome.golang_brand,
        BoxIcons.bxl_flutter,
        FontAwesome.docker_brand,
      ],
      detailsFilePath: 'assets/markdowns/flash_learn.md',
    );
  }
}
