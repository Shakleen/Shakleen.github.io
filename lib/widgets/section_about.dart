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
              Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      'assets/images/profile-picture.jpeg',
                      fit: BoxFit.cover,
                      width: 150,
                      height: 150,
                    ),
                  ),
                  SizedBox(width: 32),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                            style: Theme.of(context).textTheme.headlineLarge!
                                .copyWith(
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
                ],
              ),
              SizedBox(height: 32),
              Text(
                "I build and deploy AI systems that improve accuracy, latency, and cost. Experience shipping ML products at Samsung, startups, and as a founder.",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(height: 64),
              _Socials(),
            ],
          ),
        ),
      ),
    );
  }
}
