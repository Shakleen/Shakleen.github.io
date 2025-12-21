import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio_website/utils/launch_url.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SocialsSubsection extends StatelessWidget {
  const SocialsSubsection({super.key});

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
    final withText = Row(
      mainAxisSize: MainAxisSize.min,
      children: [icon, const SizedBox(width: 4), Text(title)],
    );

    return ElevatedButton(
      onPressed: onPressed,
      child: ScreenTypeLayout.builder(
        mobile: (context) => OrientationLayoutBuilder(
          portrait: (context) => icon,
          landscape: (context) => withText,
        ),
        tablet: (context) => withText,
      ),
    );
  }
}
