import 'package:flutter/material.dart';
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:my_portfolio_website/utils/launch_url.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:my_portfolio_website/utils/theme_manager.dart';
import 'package:provider/provider.dart';

part 'widgets/section.dart';
part 'widgets/nav_link.dart';
part 'widgets/socials.dart';
part 'widgets/section_about.dart';
part 'widgets/section_flash_learn.dart';
part 'widgets/section_production_ml.dart';
part 'widgets/section_news_bias.dart';
part 'widgets/case_study_header.dart';
part 'widgets/skills.dart';
part 'widgets/case_study_section.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeManager(),
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
  final _scrollController = ScrollController();
  final _aboutKey = GlobalKey();
  final _flashLearnKey = GlobalKey();
  final _productionMLKey = GlobalKey();
  final _newsBiasKey = GlobalKey();

  void _scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
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
          _NavLink(
            title: "About",
            onPressed: () => _scrollToSection(_aboutKey),
          ),
          _NavLink(
            title: "Flash Learn",
            onPressed: () => _scrollToSection(_flashLearnKey),
          ),
          _NavLink(
            title: "Production ML",
            onPressed: () => _scrollToSection(_productionMLKey),
          ),
          _NavLink(
            title: "News Bias",
            onPressed: () => _scrollToSection(_newsBiasKey),
          ),
        ],
      ),

      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            _AboutSection(key: _aboutKey),
            _FlashLearnSection(key: _flashLearnKey),
            _ProductionMLSection(key: _productionMLKey),
            _NewsBiasSection(key: _newsBiasKey),
          ],
        ),
      ),
    );
  }
}
