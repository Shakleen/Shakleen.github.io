import 'package:flutter/material.dart';
import 'package:my_portfolio_website/presentation/view/portrait/sections/about.dart';
import 'package:my_portfolio_website/presentation/view/widgets/custom_app_bar.dart';

class PortraitHome extends StatelessWidget {
  const PortraitHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          AboutSection(),
          AboutSection(),
          AboutSection(),
          AboutSection(),
        ],
      ),
    );
  }
}
