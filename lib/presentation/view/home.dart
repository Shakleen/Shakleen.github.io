import 'package:flutter/material.dart';
import 'package:my_portfolio_website/presentation/cubits/section_cubit.dart';
import 'package:my_portfolio_website/presentation/view/sections/about.dart';
import 'package:my_portfolio_website/presentation/view/sections/flash_learn.dart';
import 'package:my_portfolio_website/presentation/view/sections/pii.dart';
import 'package:my_portfolio_website/presentation/view/sections/professional.dart';
import 'package:my_portfolio_website/presentation/view/widgets/custom_app_bar.dart';
import 'package:my_portfolio_website/presentation/view/widgets/nav_link.dart';
import 'package:my_portfolio_website/utils/constant.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _pageController = PageController();
  final _aboutKey = GlobalKey();
  final _flashLearnKey = GlobalKey();
  final _productionMLKey = GlobalKey();
  final _professionalKey = GlobalKey();

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
          FlashLearnSection(key: _flashLearnKey),
          ProfessionalSection(key: _professionalKey),
          PiiSection(key: _productionMLKey),
        ],
      ),
    );
  }
}
