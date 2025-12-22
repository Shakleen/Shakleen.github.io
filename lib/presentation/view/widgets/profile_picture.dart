import 'package:flutter/material.dart';
import 'package:my_portfolio_website/data/models/config_model.dart';
import 'package:my_portfolio_website/utils/theme_manager.dart';
import 'package:provider/provider.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    final themeManager = Provider.of<ThemeManager>(context);
    final config = context.watch<ConfigModel>();

    return ClipOval(
      child: Image.asset(
        themeManager.themeMode == ThemeMode.dark
            ? config.about.profilePictureDark
            : config.about.profilePictureLight,
        fit: BoxFit.cover,
        width: 150,
        height: 150,
      ),
    );
  }
}
