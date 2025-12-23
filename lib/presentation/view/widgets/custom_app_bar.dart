import 'package:flutter/material.dart';
import 'package:my_portfolio_website/presentation/view/widgets/resume_button.dart';
import 'package:my_portfolio_website/utils/theme_manager.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return AppBar(
      leading: ResumeButton(),
      leadingWidth: screenWidth > 600.0 ? 120 : 50,
      title: _AppBarTitle(),
      centerTitle: true,
      actions: <Widget>[_ToggleDarkModeIconButton()],
    );
  }
}

class _ToggleDarkModeIconButton extends StatelessWidget {
  const _ToggleDarkModeIconButton();

  @override
  Widget build(BuildContext context) {
    final themeManager = Provider.of<ThemeManager>(context);

    return IconButton(
      icon: Icon(
        themeManager.themeMode == ThemeMode.dark
            ? Icons.light_mode
            : Icons.dark_mode,
      ),
      onPressed: () {
        themeManager.toggleTheme(themeManager.themeMode == ThemeMode.light);
      },
    );
  }
}

class _AppBarTitle extends StatelessWidget {
  const _AppBarTitle();

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/signature.png",
      height: 32,
      fit: BoxFit.contain,
      color: Theme.of(context).colorScheme.secondary,
    );
  }
}
