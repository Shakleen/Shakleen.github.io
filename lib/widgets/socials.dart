part of '../main.dart';

class _Socials extends StatelessWidget {
  const _Socials();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _SocialButton(
          title: "Email",
          icon: Icons.mail,
          onPressed: () async => await launchURL(
            context,
            'mailto:shakleenishfar@gmail.com',
            "Failed to launch URL for email",
            "Error occurred when launching URL for email",
          ),
        ),
        _SocialButton(
          title: "LinkedIn",
          icon: FontAwesome.linkedin_brand,
          onPressed: () async => await launchURL(
            context,
            'https://www.linkedin.com/in/shakleen-ishfar/',
            "Failed to launch URL for LinkedIn",
            "Error occurred when launching URL for LinkedIn",
          ),
        ),
        _SocialButton(
          title: "GitHub",
          icon: FontAwesome.github_brand,
          onPressed: () async => await launchURL(
            context,
            'https://github.com/Shakleen',
            "Failed to launch URL for GitHub",
            "Error occurred when launching URL for GitHub",
          ),
        ),
        _SocialButton(
          title: "Resume",
          icon: Icons.download,
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
  final IconData icon;
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
      child: Row(children: [Icon(icon), SizedBox(width: 4), Text(title)]),
    );
  }
}
