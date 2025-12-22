import 'package:flutter/material.dart';
import 'package:my_portfolio_website/data/models/config_model.dart';
import 'package:my_portfolio_website/presentation/cubits/section_cubit.dart';
import 'package:my_portfolio_website/presentation/view/desktop/sections/about.dart';
import 'package:my_portfolio_website/presentation/view/desktop/widgets/case_study_section.dart';
import 'package:my_portfolio_website/presentation/view/desktop/widgets/nav_link.dart';
import 'package:my_portfolio_website/presentation/view/widgets/custom_app_bar.dart';
import 'package:provider/provider.dart';

class DesktopHome extends StatefulWidget {
  const DesktopHome({super.key});

  @override
  State<DesktopHome> createState() => _DesktopHomeState();
}

class _DesktopHomeState extends State<DesktopHome> {
  final _pageController = PageController();
  final _aboutKey = GlobalKey();
  final _flashLearnKey = GlobalKey();
  final _piiKey = GlobalKey();
  final _professionalKey = GlobalKey();

  static const int animationDurationPageScroll = 500;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      final page = _pageController.page!.round();
      final section = Section.values[page];
      context.read<SectionCubit>().updateSection(section);
    });
  }

  void _scrollToSection(int page) {
    _pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: animationDurationPageScroll),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final config = context.watch<ConfigModel>();
    return Scaffold(
      appBar: CustomAppBar(),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: Section.values
              .map<NavLink>(
                (Section sec) => NavLink(
                  title: sectionToName[sec]!,
                  section: sec,
                  onPressed: () => _scrollToSection(sectionToIndex[sec]!),
                ),
              )
              .toList(),
        ),
      ),
      body: PageView(
        controller: _pageController,
        scrollDirection: Axis.horizontal,
        children: [
          AboutSection(key: _aboutKey),
          CaseStudySection(
            key: _flashLearnKey,
            data: config.caseStudies['flash-learn']!,
          ),
          CaseStudySection(
            key: _professionalKey,
            data: config.caseStudies['production_ml']!,
          ),
          CaseStudySection(key: _piiKey, data: config.caseStudies['pii']!),
        ],
      ),
    );
  }
}
