import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio_website/data/models/config_model.dart';
import 'package:my_portfolio_website/presentation/cubits/section_cubit.dart';
import 'package:my_portfolio_website/presentation/view/portrait/sections/about.dart';
import 'package:my_portfolio_website/presentation/view/portrait/widgets/case_study_section.dart';
import 'package:my_portfolio_website/presentation/view/widgets/custom_app_bar.dart';
import 'package:provider/provider.dart';

class PortraitHome extends StatefulWidget {
  const PortraitHome({super.key});

  @override
  State<PortraitHome> createState() => _PortraitHomeState();
}

class _PortraitHomeState extends State<PortraitHome> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    // No _onScroll listener needed
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final config = context.watch<ConfigModel>();

    return Scaffold(
      appBar: CustomAppBar(),
      body: ListView(
        controller: _scrollController,
        scrollDirection: Axis.vertical,
        children: [
          const PortraitAboutSection(), // Removed key
          ...config.caseStudies.values.map((caseStudy) {
            return PortraitCaseStudySection(
              // Removed key
              data: caseStudy,
            );
          }),
        ],
      ),
    );
  }
}