import 'package:flutter/material.dart';
import 'package:my_portfolio_website/data/models/config_model.dart';
import 'package:provider/provider.dart';

class AboutDescription extends StatelessWidget {
  const AboutDescription({super.key});

  @override
  Widget build(BuildContext context) {
    final config = context.watch<ConfigModel>();

    return Text(
      config.about.description,
      style: Theme.of(context).textTheme.bodyLarge,
      textAlign: TextAlign.center,
      softWrap: true,
    );
  }
}
