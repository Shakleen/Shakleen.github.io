import 'package:flutter/material.dart';
import 'package:my_portfolio_website/utils/launch_url.dart';

class CaseStudyTitleWithLink extends StatelessWidget {
  const CaseStudyTitleWithLink({
    super.key,
    required this.title,
    required this.url,
  });

  final String title;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: Icon(
            Icons.link_outlined,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          style: IconButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.primary,
          ),
          tooltip: "Repository",
          onPressed: () async => await launchURL(
            context,
            url,
            "Unable to load URL",
            "Unable to load URL",
          ),
        ),
        SizedBox(width: 8),
        Builder(builder: (context) {
          final screenWidth = MediaQuery.of(context).size.width;
          final textStyle = screenWidth < 600
              ? Theme.of(context).textTheme.headlineSmall
              : Theme.of(context).textTheme.headlineLarge;
          return Text(
            title,
            style: textStyle!.copyWith(
              color: Theme.of(context).colorScheme.primary,
            ),
          );
        }),
      ],
    );
  }
}
