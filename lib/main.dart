import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:my_portfolio_website/utils/launch_url.dart';

part 'widgets/section.dart';
part 'widgets/nav_link.dart';
part 'widgets/socials.dart';
part 'widgets/section_about.dart';
part 'widgets/section_flash_learn.dart';
part 'widgets/section_production_ml.dart';
part 'widgets/section_pii_detection.dart';
part 'widgets/case_study_header.dart';
part 'widgets/skills.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shakleen Ishfar - Portfolio',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.blueGrey)),
      home: const Home(),
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
  final _piiDetectionKey = GlobalKey();

  void _scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: Duration(milliseconds: 500),
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
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.download,
            color: Theme.of(context).colorScheme.onPrimary,
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
          color: Theme.of(context).colorScheme.onPrimary,
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        actions: <Widget>[
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
            title: "PII Detection",
            onPressed: () => _scrollToSection(_piiDetectionKey),
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
            _PiiDetectionSection(key: _piiDetectionKey),
          ],
        ),
      ),
    );
  }
}
