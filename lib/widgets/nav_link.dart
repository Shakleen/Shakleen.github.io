part of '../main.dart';

class _NavLink extends StatelessWidget {
  final String title;
  final bool invert;

  const _NavLink({required this.title, this.invert = false});

  @override
  Widget build(BuildContext context) {
    if (invert) {
      return ElevatedButton(
        onPressed: () {},
        child: Text(
          title,
          style: TextStyle(color: Theme.of(context).colorScheme.primary),
        ),
      );
    }

    return TextButton(
      onPressed: () {},
      child: Text(
        title,
        style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
      ),
    );
  }
}
