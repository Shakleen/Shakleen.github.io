import 'package:flutter/material.dart';

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
          _Section(child: Text("About")),
          _Section(child: Text("Case Study #1: Flash Learn")),
          _Section(child: Text("Case Study #2: Production ML")),
          _Section(child: Text("Case Study #3: News Outlet Freedom Detection")),
        ],
      ),
    );
  }
}

class _Section extends StatelessWidget {
  final Widget child;

  const _Section({required this.child});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return SizedBox(width: width, height: height, child: child);
  }
}

class _NavLink extends StatelessWidget {
  final String title;
  final bool invert;

  const _NavLink({required this.title, this.invert = false});

  @override
  Widget build(BuildContext context) {
    if (invert) {
      return ElevatedButton(
        onPressed: () {},
        child: Text(
          title,
          style: TextStyle(color: Theme.of(context).colorScheme.primary),
        ),
      );
    }

    return TextButton(
      onPressed: () {},
      child: Text(
        title,
        style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
      ),
    );
  }
}
