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

  final List<Section> _availableSections = [];
  final List<Widget> _pages = [];
  bool _isInitialized = false;

  static const int animationDurationPageScroll = 500;

  void _initialize(ConfigModel config) {
    if (_isInitialized) return;

    _availableSections.add(Section.about);
    _pages.add(AboutSection(key: GlobalKey()));

    final caseStudies = config.caseStudies.values.toList();
    caseStudies.sort((a, b) => a.index.compareTo(b.index));

    for (var cs in caseStudies) {
      if (cs.index < Section.values.length) {
        _availableSections.add(Section.values[cs.index]);
        _pages.add(CaseStudySection(key: GlobalKey(), data: cs));
      }
    }
    _isInitialized = true;
  }

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      if (!_isInitialized) return;
      final page = _pageController.page!.round();
      if (page < _availableSections.length) {
        final section = _availableSections[page];
        context.read<SectionCubit>().updateSection(section);
      }
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
    _initialize(config);
    return Scaffold(
      appBar: CustomAppBar(),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _availableSections
              .map<NavLink>(
                (Section sec) => NavLink(
                  title: sectionToName[sec]!,
                  section: sec,
                  onPressed: () => _scrollToSection(_availableSections.indexOf(sec)),
                ),
              )
              .toList(),
        ),
      ),
      body: PageView(
        controller: _pageController,
        scrollDirection: Axis.horizontal,
        children: _pages,
      ),
    );
  }
}
