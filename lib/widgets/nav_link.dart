part of '../main.dart';

class _NavLink extends StatelessWidget {
  final String title;
  final bool invert;
  final VoidCallback onPressed;

  const _NavLink({required this.title, this.invert = false, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    if (invert) {
      return ElevatedButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(color: Theme.of(context).colorScheme.primary),
        ),
      );
    }

    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
      ),
    );
  }
}
