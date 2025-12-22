import 'package:flutter/material.dart';
import 'package:my_portfolio_website/presentation/cubits/section_cubit.dart';
import 'package:my_portfolio_website/presentation/view/landscape/sections/about.dart';
import 'package:my_portfolio_website/presentation/view/landscape/widgets/case_study_section.dart';
import 'package:my_portfolio_website/presentation/view/widgets/custom_app_bar.dart';
import 'package:my_portfolio_website/utils/constant.dart';

class LandscapeHome extends StatelessWidget {
  const LandscapeHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          LandscapeAboutSection(),
          LandscapeCaseStudySection(data: caseStudyData[Section.flashLearn]!),
          LandscapeCaseStudySection(data: caseStudyData[Section.prof]!),
          LandscapeCaseStudySection(data: caseStudyData[Section.pii]!),
        ],
      ),
    );
  }
}
