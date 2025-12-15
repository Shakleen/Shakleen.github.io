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
          NavLink(title: "About"),
          NavLink(title: "Projects"),
          NavLink(title: "Experience"),
          NavLink(title: "Education"),
          NavLink(title: "Resume", invert: true),
        ],
      ),
      body: ListView(
        children: [
          Text("About"),
          Text("Case Study #1: Flash Learn"),
          Text("Case Study #2: Production ML"),
          Text("Case Study #3: News Outlet Freedom Detection"),
        ],
      ),
    );
  }
}

class NavLink extends StatelessWidget {
  final String title;
  final bool invert;

  const NavLink({super.key, required this.title, this.invert = false});

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
