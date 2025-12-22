import 'package:flutter/material.dart';
import 'package:my_portfolio_website/data/models/config_model.dart';
import 'package:my_portfolio_website/presentation/view/landscape/sections/about.dart';
import 'package:my_portfolio_website/presentation/view/landscape/widgets/case_study_section.dart';
import 'package:my_portfolio_website/presentation/view/widgets/custom_app_bar.dart';
import 'package:provider/provider.dart';

class LandscapeHome extends StatefulWidget {
  const LandscapeHome({super.key});

  @override
  State<LandscapeHome> createState() => _LandscapeHomeState();
}

class _LandscapeHomeState extends State<LandscapeHome> {
  final ScrollController _controller = ScrollController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final config = context.watch<ConfigModel>();
    return Scaffold(
      appBar: CustomAppBar(),
      body: ListView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: [
          LandscapeAboutSection(),
          LandscapeCaseStudySection(data: config.caseStudies['flash-learn']!),
          LandscapeCaseStudySection(data: config.caseStudies['production_ml']!),
          LandscapeCaseStudySection(data: config.caseStudies['pii']!),
        ],
      ),
    );
  }
}
