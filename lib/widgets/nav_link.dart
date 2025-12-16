part of '../main.dart';

class _NavLink extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const _NavLink({required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(color: Theme.of(context).colorScheme.secondary),
      ),
    );
  }
}
