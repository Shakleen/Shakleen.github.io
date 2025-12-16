import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:my_portfolio_website/utils/launch_url.dart';

part 'widgets/section.dart';
part 'widgets/nav_link.dart';
part 'widgets/socials.dart';
part 'widgets/section_about.dart';
part 'widgets/section_experience.dart';
part 'widgets/section_education.dart';
part 'widgets/section_projects.dart';

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
  final _projectsKey = GlobalKey();
  final _experienceKey = GlobalKey();
  final _educationKey = GlobalKey();

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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SI",
          style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        actions: <Widget>[
          _NavLink(
            title: "About",
            onPressed: () => _scrollToSection(_aboutKey),
          ),
          _NavLink(
            title: "Projects",
            onPressed: () => _scrollToSection(_projectsKey),
          ),
          _NavLink(
            title: "Experience",
            onPressed: () => _scrollToSection(_experienceKey),
          ),
          _NavLink(
            title: "Education",
            onPressed: () => _scrollToSection(_educationKey),
          ),
          _NavLink(
            title: "Resume",
            invert: true,
            onPressed: () async => await launchURL(
              context,
              'https://drive.google.com/file/d/1UIMRwmcYXDOc7vyvsVQoTXLc03FwmYqB/view?usp=drive_link',
              "Failed to launch URL for resume",
              "Error occurred when launching URL for resume",
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            _AboutSection(key: _aboutKey),
            _ProjectsSection(key: _projectsKey),
            _ExperienceSection(key: _experienceKey),
            _EducationSection(key: _educationKey),
          ],
        ),
      ),
    );
  }
}
