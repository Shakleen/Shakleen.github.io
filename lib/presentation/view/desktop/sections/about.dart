import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio_website/utils/launch_url.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.6,
        height: MediaQuery.of(context).size.height * 0.6,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _Bio(),
            SizedBox(height: 32),
            Text(
              "I build and deploy AI systems that improve accuracy, latency, and cost. Experience shipping ML products at Samsung, startups, and as a founder.",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(height: 32),
            _Skills(),
            SizedBox(height: 32),
            _Socials(),
          ],
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
      ],
    );
  }
}

class _Skills extends StatelessWidget {
  const _Skills();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Skills",
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
            color: Theme.of(context).colorScheme.inverseSurface.withAlpha(128),
          ),
        ),
        SizedBox(height: 8),
        _SkillIconBar(),
      ],
    );
  }
}

class _SkillIconBar extends StatelessWidget {
  const _SkillIconBar();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _SkillIcon(path: 'assets/logos/python.svg'),
        _SkillIcon(path: 'assets/logos/go.svg'),
        _SkillIcon(path: 'assets/logos/flutter.svg'),
        _SkillIcon(path: 'assets/logos/postgresql.svg'),
        _SkillIcon(path: 'assets/logos/docker.svg'),
        _SkillIcon(path: 'assets/logos/kubernetes.svg'),
        _SkillIcon(path: 'assets/logos/aws.svg'),
        _SkillIcon(path: 'assets/logos/pytorch.svg'),
        _SkillIcon(path: 'assets/logos/huggingface.svg'),
        _SkillIcon(path: 'assets/logos/vim.svg'),
        _SkillIcon(path: 'assets/logos/git.svg'),
        _SkillIcon(path: 'assets/logos/arch-linux.svg'),
      ],
    );
  }
}

class _SkillIcon extends StatelessWidget {
  final String path;

  const _SkillIcon({required this.path});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      width: 24,
      height: 24,
      fit: BoxFit.contain,
      color: Theme.of(context).colorScheme.secondary,
    );
  }
}

class _Socials extends StatelessWidget {
  const _Socials();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Contact me",
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
            color: Theme.of(context).colorScheme.inverseSurface.withAlpha(128),
          ),
        ),
        SizedBox(height: 8),
        _ButtonBar(),
      ],
    );
  }
}

class _ButtonBar extends StatelessWidget {
  const _ButtonBar();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _SocialButton(
          title: "Email",
          icon: SvgPicture.asset(
            'assets/logos/gmail.svg',
            width: 24,
            height: 24,
            fit: BoxFit.contain,
          ),
          onPressed: () async => await launchURL(
            context,
            'mailto:shakleenishfar@gmail.com',
            "Failed to launch URL for email",
            "Error occurred when launching URL for email",
          ),
        ),
        _SocialButton(
          title: "LinkedIn",
          icon: SvgPicture.asset(
            'assets/logos/linkedin.svg',
            width: 24,
            height: 24,
            fit: BoxFit.contain,
          ),
          onPressed: () async => await launchURL(
            context,
            'https://www.linkedin.com/in/shakleen-ishfar/',
            "Failed to launch URL for LinkedIn",
            "Error occurred when launching URL for LinkedIn",
          ),
        ),
        _SocialButton(
          title: "GitHub",
          icon: SvgPicture.asset(
            'assets/logos/github.svg',
            width: 24,
            height: 24,
            fit: BoxFit.contain,
          ),
          onPressed: () async => await launchURL(
            context,
            'https://github.com/Shakleen',
            "Failed to launch URL for GitHub",
            "Error occurred when launching URL for GitHub",
          ),
        ),
        _SocialButton(
          title: "Resume",
          icon: Icon(Icons.download),
          onPressed: () async => await launchURL(
            context,
            'https://drive.google.com/file/d/1UIMRwmcYXDOc7vyvsVQoTXLc03FwmYqB/view?usp=drive_link',
            "Failed to launch URL for resume",
            "Error occurred when launching URL for resume",
          ),
        ),
      ],
    );
  }
}

class _SocialButton extends StatelessWidget {
  final String title;
  final Widget icon;
  final VoidCallback onPressed;

  const _SocialButton({
    required this.title,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Row(children: [icon, SizedBox(width: 4), Text(title)]),
    );
  }
}
