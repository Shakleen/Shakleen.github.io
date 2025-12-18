import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio_website/cubits/case_study_cubit.dart';
import 'package:my_portfolio_website/cubits/section_cubit.dart';
import 'package:my_portfolio_website/models/feature_model.dart';
import 'package:my_portfolio_website/utils/launch_url.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:my_portfolio_website/utils/theme_manager.dart';
import 'package:provider/provider.dart';

part 'widgets/section.dart';
part 'widgets/nav_link.dart';
part 'widgets/socials.dart';
part 'widgets/section_about.dart';
part 'widgets/section_flash_learn.dart';
part 'widgets/section_pii.dart';
part 'widgets/section_news_bias.dart';
part 'widgets/case_study_header.dart';
part 'widgets/skills.dart';
part 'widgets/case_study_section.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeManager()),
        BlocProvider(create: (context) => SectionCubit()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeManager>(
      builder: (context, themeManager, child) {
        return MaterialApp(
          title: 'Shakleen Ishfar - Portfolio',
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          themeMode: themeManager.themeMode,
          home: const Home(),
        );
      },
    );
  }
}

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
  final _newsBiasKey = GlobalKey();

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
              .map<_NavLink>(
                (Section sec) => _NavLink(
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
          _AboutSection(key: _aboutKey),
          _FlashLearnSection(key: _flashLearnKey),
          _PiiSection(key: _productionMLKey),
          _NewsBiasSection(key: _newsBiasKey),
        ],
      ),
    );
  }
}
