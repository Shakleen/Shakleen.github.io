import 'package:flutter/material.dart';
import 'package:my_portfolio_website/presentation/cubits/section_cubit.dart';
import 'package:my_portfolio_website/presentation/view/sections/about.dart';
import 'package:my_portfolio_website/presentation/view/sections/flash_learn.dart';
import 'package:my_portfolio_website/presentation/view/sections/pii.dart';
import 'package:my_portfolio_website/presentation/view/sections/professional.dart';
import 'package:my_portfolio_website/presentation/view/widgets/nav_link.dart';
import 'package:my_portfolio_website/utils/launch_url.dart';
import 'package:my_portfolio_website/utils/theme_manager.dart';
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
      duration: const Duration(milliseconds: 500),
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
    final themeManager = Provider.of<ThemeManager>(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.download,
            color: Theme.of(context).colorScheme.secondary,
          ),
          tooltip: "Resume",
          onPressed: () async => await launchURL(
            context,
            'https://drive.google.com/file/d/1UIMRwmcYXDOc7vyvsVQoTXLc03FwmYqB/view?usp=drive_link',
            "Failed to launch URL for resume",
            "Error occurred when launching URL for resume",
          ),
        ),
        title: Image.asset(
          "assets/images/signature.png",
          height: 50,
          color: Theme.of(context).colorScheme.primary,
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              themeManager.themeMode == ThemeMode.dark
                  ? Icons.light_mode
                  : Icons.dark_mode,
            ),
            onPressed: () {
              themeManager.toggleTheme(
                themeManager.themeMode == ThemeMode.light,
              );
            },
          ),
        ],
      ),
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
