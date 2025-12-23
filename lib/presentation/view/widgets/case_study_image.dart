import 'package:flutter/material.dart';
import 'package:my_portfolio_website/data/models/feature_model.dart';
import 'package:my_portfolio_website/presentation/view/widgets/image_dialog.dart';

class ImageWidget extends StatefulWidget {
  final FeatureModel feature;

  const ImageWidget({super.key, required this.feature});

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  static const int _animationDuration = 200;
  bool _isHovering = false;

  @override
  void initState() {
    super.initState();
    _isHovering = false;
  }

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    String? imagePath;

    if (brightness == Brightness.dark) {
      imagePath = widget.feature.darkImgPath ?? widget.feature.lightImgPath;
    } else {
      imagePath = widget.feature.lightImgPath ?? widget.feature.darkImgPath;
    }

    if (imagePath == null) {
      return const Placeholder(color: Colors.green);
    }

    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => ImageDialog(imagePath: imagePath!),
        );
      },
      child: MouseRegion(
        onEnter: (_) => setState(() {
          _isHovering = true;
        }),
        onExit: (_) => setState(() {
          _isHovering = false;
        }),
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedOpacity(
              duration: const Duration(milliseconds: _animationDuration),
              opacity: _isHovering ? 0.5 : 1.0,
              child: Image.asset(imagePath, fit: BoxFit.contain),
            ),
            AnimatedOpacity(
              duration: const Duration(milliseconds: _animationDuration),
              opacity: _isHovering ? 1.0 : 0.0,
              child: Icon(
                Icons.zoom_in,
                color: Theme.of(context).colorScheme.primary,
                size: 48,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
