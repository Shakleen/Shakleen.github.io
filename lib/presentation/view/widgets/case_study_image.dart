import 'package:flutter/material.dart';
import 'package:my_portfolio_website/data/models/feature_model.dart';

class ImageWidget extends StatelessWidget {
  final FeatureModel feature;

  const ImageWidget({super.key, required this.feature});

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    String? imagePath;

    if (brightness == Brightness.dark) {
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
