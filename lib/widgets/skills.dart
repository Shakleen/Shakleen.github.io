part of '../main.dart';

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
        _SkillIcon(icon: FontAwesome.python_brand),
        _SkillIcon(icon: FontAwesome.golang_brand),
        _SkillIcon(icon: Icons.flutter_dash_sharp),
        _SkillIcon(icon: FontAwesome.aws_brand),
        _SkillIcon(icon: FontAwesome.linux_brand),
        _SkillIcon(icon: FontAwesome.git_brand),
        _SkillIcon(icon: Icons.android),
        _SkillIcon(icon: FontAwesome.docker_brand),
      ],
    );
  }
}

class _SkillIcon extends StatelessWidget {
  final IconData icon;

  const _SkillIcon({required this.icon});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      child: Icon(icon, color: Theme.of(context).colorScheme.inverseSurface),
    );
  }
}
