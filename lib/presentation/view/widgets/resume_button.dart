import 'package:flutter/material.dart';
import 'package:my_portfolio_website/data/models/config_model.dart';
import 'package:my_portfolio_website/utils/launch_url.dart';
import 'package:provider/provider.dart';

class ResumeButton extends StatelessWidget {
  const ResumeButton({super.key});

  @override
  Widget build(BuildContext context) {
    final config = context.watch<ConfigModel>();
    final screenWidth = MediaQuery.of(context).size.width;
    final String failMsg = "Failed to launch URL for resume";
    final String errorMsg = "Error occurred when launching URL for resume";
    final String label = "Resume";

    if (screenWidth > 600.0) {
      return TextIconButton(
        icon: Icons.download,
        label: label,
        url: config.urls.resumePdf,
        failMsg: failMsg,
        errorMsg: errorMsg,
      );
    } else {
      return IconOnlyButton(
        icon: Icons.download,
        tooltip: label,
        url: config.urls.resumePdf,
        failMsg: failMsg,
        errorMsg: errorMsg,
      );
    }
  }
}

class TextIconButton extends StatelessWidget {
  const TextIconButton({
    super.key,
    required this.icon,
    required this.label,
    required this.url,
    required this.failMsg,
    required this.errorMsg,
  });

  final IconData icon;
  final String label;
  final String url;
  final String failMsg;
  final String errorMsg;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      icon: Icon(icon, color: Theme.of(context).colorScheme.secondary),
      label: Text(
        label,
        style: TextStyle(color: Theme.of(context).colorScheme.secondary),
      ),
      onPressed: () async => await launchURL(context, url, failMsg, errorMsg),
    );
  }
}

class IconOnlyButton extends StatelessWidget {
  const IconOnlyButton({
    super.key,
    required this.icon,
    required this.tooltip,
    required this.url,
    required this.failMsg,
    required this.errorMsg,
  });

  final IconData icon;
  final String tooltip;
  final String url;
  final String failMsg;
  final String errorMsg;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon, color: Theme.of(context).colorScheme.secondary),
      tooltip: tooltip,
      onPressed: () async => await launchURL(context, url, failMsg, errorMsg),
    );
  }
}
