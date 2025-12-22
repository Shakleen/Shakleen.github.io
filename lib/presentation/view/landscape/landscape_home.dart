import 'package:flutter/material.dart';
import 'package:my_portfolio_website/presentation/view/landscape/sections/about.dart';
import 'package:my_portfolio_website/presentation/view/widgets/custom_app_bar.dart';

class LandscapeHome extends StatelessWidget {
  const LandscapeHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: CustomAppBar(), body: LandscapeAboutSection());
  }
}
