import 'package:flutter/material.dart';
import 'package:my_portfolio_website/utils/constant.dart';
import 'package:my_portfolio_website/utils/launch_url.dart';
import 'package:my_portfolio_website/utils/theme_manager.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: _DownloadResumeIconButton(),
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
      height: 50,
      color: Theme.of(context).colorScheme.primary,
    );
  }
}

class _DownloadResumeIconButton extends StatelessWidget {
  const _DownloadResumeIconButton();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.download,
        color: Theme.of(context).colorScheme.secondary,
      ),
      tooltip: "Resume",
      onPressed: () async => await launchURL(
        context,
        resumeUrl,
        failMessageResumeLink,
        errorMessageResumeLink,
      ),
    );
  }
}
