import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:my_portfolio_website/utils/launch_url.dart';
import 'package:my_portfolio_website/utils/snackbar.dart';
import 'package:url_launcher/url_launcher.dart';

part 'widgets/section.dart';
part 'widgets/nav_link.dart';
part 'widgets/socials.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.blueGrey)),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SI",
          style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        actions: [
          _NavLink(title: "About"),
          _NavLink(title: "Projects"),
          _NavLink(title: "Experience"),
          _NavLink(title: "Education"),
          _NavLink(title: "Resume", invert: true),
        ],
      ),
      body: ListView(
        children: [
          _AboutSection(),
          _Section(child: Text("Case Study #1: Flash Learn")),
          _Section(child: Text("Case Study #2: Production ML")),
          _Section(child: Text("Case Study #3: News Outlet Freedom Detection")),
        ],
      ),
    );
  }
}

class _AboutSection extends StatelessWidget {
  const _AboutSection();

  @override
  Widget build(BuildContext context) {
    return _Section(
      child: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.6,
          height: MediaQuery.of(context).size.height * 0.6,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      'assets/images/profile-picture.jpeg',
                      fit: BoxFit.cover,
                      width: 150,
                      height: 150,
                    ),
                  ),
                  SizedBox(width: 32),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello! I'm",
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Shakleen",
                            style: Theme.of(
                              context,
                            ).textTheme.headlineLarge!.copyWith(fontSize: 64),
                          ),
                          const SizedBox(width: 4),
                          Text(
                            "Ishfar",
                            style: Theme.of(context).textTheme.headlineLarge!
                                .copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontSize: 64,
                                ),
                          ),
                        ],
                      ),
                      Text(
                        "AI Engineer",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 32),
              Text(
                "I build and deploy AI systems that improve accuracy, latency, and cost. Experience shipping ML products at Samsung, startups, and as a founder.",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(height: 64),
              _Socials(),
            ],
          ),
        ),
      ),
    );
  }
}
