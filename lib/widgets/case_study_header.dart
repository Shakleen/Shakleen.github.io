part of '../main.dart';

class _CaseStudyHeader extends StatelessWidget {
  final int number;
  final String title;

  const _CaseStudyHeader(this.number, this.title);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Case Study #$number",
          style: Theme.of(context).textTheme.bodySmall,
        ),
        SizedBox(height: 4),
        Text(
          title,
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        Divider(height: 4),
      ],
    );
  }
}
