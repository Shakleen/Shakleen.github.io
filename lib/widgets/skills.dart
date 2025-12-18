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
        _SkillIcon(path: 'assets/logos/python.svg'),
        _SkillIcon(path: 'assets/logos/go.svg'),
        _SkillIcon(path: 'assets/logos/flutter.svg'),
        _SkillIcon(path: 'assets/logos/docker.svg'),
        _SkillIcon(path: 'assets/logos/kubernetes.svg'),
        _SkillIcon(path: 'assets/logos/aws.svg'),
        _SkillIcon(path: 'assets/logos/vim.svg'),
        _SkillIcon(path: 'assets/logos/git.svg'),
        _SkillIcon(path: 'assets/logos/arch-linux.svg'),
        _SkillIcon(path: 'assets/logos/postgresql.svg'),
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
