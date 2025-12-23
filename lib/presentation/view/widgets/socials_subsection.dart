import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio_website/data/models/config_model.dart';
import 'package:my_portfolio_website/presentation/view/widgets/resume_button.dart';
import 'package:my_portfolio_website/utils/launch_url.dart';
import 'package:provider/provider.dart';
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
    final config = context.watch<ConfigModel>();

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _SocialButton(
          title: "Email",
          icon: SvgPicture.asset(
            config.assets.gmailLogo,
            width: 24,
            height: 24,
            fit: BoxFit.contain,
          ),
          onPressed: () async => await launchURL(
            context,
            config.urls.email,
            "Failed to launch URL for email",
            "Error occurred when launching URL for email",
          ),
        ),
        _SocialButton(
          title: "LinkedIn",
          icon: SvgPicture.asset(
            config.assets.linkedinLogo,
            width: 24,
            height: 24,
            fit: BoxFit.contain,
          ),
          onPressed: () async => await launchURL(
            context,
            config.urls.linkedInProfile,
            "Failed to launch URL for LinkedIn",
            "Error occurred when launching URL for LinkedIn",
          ),
        ),
        _SocialButton(
          title: "GitHub",
          icon: SvgPicture.asset(
            config.assets.githubLogo,
            width: 24,
            height: 24,
            fit: BoxFit.contain,
          ),
          onPressed: () async => await launchURL(
            context,
            config.urls.githubProfile,
            "Failed to launch URL for GitHub",
            "Error occurred when launching URL for GitHub",
          ),
        ),
        ResumeButton(),
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
    final withText = ElevatedButton(
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [icon, const SizedBox(width: 4), Text(title)],
      ),
    );
    final onlyIcon = IconButton(
      icon: icon,
      tooltip: title,
      onPressed: onPressed,
    );

    return ScreenTypeLayout.builder(
      mobile: (context) => OrientationLayoutBuilder(
        portrait: (context) => onlyIcon,
        landscape: (context) => onlyIcon,
      ),
      tablet: (context) => OrientationLayoutBuilder(
        portrait: (context) => onlyIcon,
        landscape: (context) => onlyIcon,
      ),
      desktop: (context) => OrientationLayoutBuilder(
        portrait: (context) => onlyIcon,
        landscape: (context) => withText,
      ),
    );
  }
}
