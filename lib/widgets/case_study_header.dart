part of '../main.dart';

class _CaseStudyHeader extends StatelessWidget {
  final int number;
  final String title;
  final String shortDescription;
  final List<String> logoPaths;

  const _CaseStudyHeader(
    this.number,
    this.title,
    this.shortDescription,
    this.logoPaths,
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 5,
          child: _Title(
            number: number,
            title: title,
            description: shortDescription,
          ),
        ),
        Expanded(flex: 1, child: _TechStack(logoPaths: logoPaths)),
      ],
    );
  }
}

class _TechStack extends StatelessWidget {
  const _TechStack({required this.logoPaths});

  final List<String> logoPaths;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        _SubTitle(text: "Tech Stack"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: logoPaths
              .map(
                (String path) => SvgPicture.asset(
                  path,
                  width: 24,
                  height: 24,
                  fit: BoxFit.contain,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({
    required this.number,
    required this.title,
    required this.description,
  });

  final int number;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _SubTitle(text: "Case Study #$number"),
        SizedBox(height: 2),
        Text(
          title,
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        SizedBox(height: 2),
        Text(
          description,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ],
    );
  }
}

class _SubTitle extends StatelessWidget {
  const _SubTitle({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.bodySmall);
  }
}
