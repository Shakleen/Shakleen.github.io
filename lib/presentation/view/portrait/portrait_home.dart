import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio_website/presentation/cubits/section_cubit.dart';
import 'package:my_portfolio_website/presentation/view/portrait/sections/about.dart';
import 'package:my_portfolio_website/presentation/view/portrait/widgets/case_study_section.dart';
import 'package:my_portfolio_website/presentation/view/widgets/custom_app_bar.dart';
import 'package:my_portfolio_website/utils/constant.dart';

class PortraitHome extends StatefulWidget {
  const PortraitHome({super.key});

  @override
  State<PortraitHome> createState() => _PortraitHomeState();
}

class _PortraitHomeState extends State<PortraitHome> {
  final _scrollController = ScrollController();
  final _aboutKey = GlobalKey();
  final _flashLearnKey = GlobalKey();
  final _piiKey = GlobalKey();
  final _professionalKey = GlobalKey();
  Section? _currentSection;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    final Map<GlobalKey, Section> keyToSection = {
      _aboutKey: Section.about,
      _flashLearnKey: Section.flashLearn,
      _piiKey: Section.pii,
      _professionalKey: Section.prof,
    };

    final sections = [_aboutKey, _flashLearnKey, _piiKey, _professionalKey];
    Section? newSection;
    double accumulatedHeight = 0;
    const threshold = 200.0;

    for (final key in sections) {
      final context = key.currentContext;
      if (context == null) continue;

      final height = context.size!.height;
      if (_scrollController.offset < accumulatedHeight + height - threshold) {
        newSection = keyToSection[key];
        break;
      }
      accumulatedHeight += height;
    }

    if (newSection == null &&
        sections.every((key) => key.currentContext != null)) {
      newSection = keyToSection[sections.last];
    }

    if (newSection != null && newSection != _currentSection) {
      _currentSection = newSection;
      context.read<SectionCubit>().updateSection(newSection);
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: ListView(
        controller: _scrollController,
        scrollDirection: Axis.vertical,
        children: [
          PortraitAboutSection(key: _aboutKey),
          PortraitCaseStudySection(
            key: _flashLearnKey,
            data: caseStudyData[Section.flashLearn]!,
          ),
          PortraitCaseStudySection(
            key: _professionalKey,
            data: caseStudyData[Section.prof]!,
          ),
          PortraitCaseStudySection(
            key: _piiKey,
            data: caseStudyData[Section.pii]!,
          ),
        ],
      ),
    );
  }
}
