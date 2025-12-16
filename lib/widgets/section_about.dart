part of '../main.dart';

class _AboutSection extends StatelessWidget {
  const _AboutSection({super.key});

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
              Expanded(flex: 4, child: _Bio()),
              Expanded(
                flex: 2,
                child: Text(
                  "I build and deploy AI systems that improve accuracy, latency, and cost. Experience shipping ML products at Samsung, startups, and as a founder.",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              Expanded(flex: 2, child: _Skills()),
              Expanded(flex: 2, child: _Socials()),
            ],
          ),
        ),
      ),
    );
  }
}

class _Bio extends StatelessWidget {
  const _Bio();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: ClipOval(
            child: Image.asset(
              'assets/images/profile-picture.jpeg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Expanded(
          flex: 8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
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
        ),
      ],
    );
  }
}
