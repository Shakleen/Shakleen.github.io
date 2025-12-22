import 'package:flutter/material.dart';
import 'package:my_portfolio_website/data/models/feature_model.dart';
import 'package:my_portfolio_website/utils/theme_manager.dart';
import 'package:provider/provider.dart';

class ImageWidget extends StatelessWidget {
  final FeatureModel feature;

  const ImageWidget({super.key, required this.feature});

  @override
  Widget build(BuildContext context) {
    final themeManager = Provider.of<ThemeManager>(context);
    String? imagePath;

    if (themeManager.themeMode == ThemeMode.dark) {
      imagePath = feature.darkImgPath ?? feature.lightImgPath;
    } else {
      imagePath = feature.lightImgPath ?? feature.darkImgPath;
    }

    if (imagePath == null) {
      return Placeholder(color: Colors.green);
    }

    return Image.asset(imagePath, fit: BoxFit.contain);
  }
}
