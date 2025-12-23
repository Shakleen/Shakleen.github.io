import 'package:flutter/material.dart';

class ImageDialog extends StatefulWidget {
  final String imagePath;

  const ImageDialog({super.key, required this.imagePath});

  @override
  State<ImageDialog> createState() => _ImageDialogState();
}

class _ImageDialogState extends State<ImageDialog> {
  final TransformationController _transformationController =
      TransformationController();
  final double _minScale = 1.0;
  final double _maxScale = 4.0;

  @override
  void initState() {
    super.initState();
    _transformationController.value = Matrix4.identity();
  }

  @override
  void dispose() {
    _transformationController.dispose();
    super.dispose();
  }

  void _zoom(double factor, BoxConstraints constraints) {
    final currentScale = _transformationController.value.getMaxScaleOnAxis();
    final newScale = (currentScale * factor).clamp(_minScale, _maxScale);

    if (newScale == currentScale) return;

    final relativeScale = newScale / currentScale;

    final centerX = constraints.maxWidth / 2;
    final centerY = constraints.maxHeight / 2;

    final zoomMatrix = Matrix4.identity()
      ..translate(centerX, centerY)
      ..scale(relativeScale)
      ..translate(-centerX, -centerY);

    _transformationController.value = _transformationController.value
        .multiplied(zoomMatrix);
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;

    return Dialog(
      backgroundColor: Theme.of(context).colorScheme.surface.withOpacity(0.85),
      insetPadding: const EdgeInsets.all(16),
      constraints: BoxConstraints(
        minHeight: screenHeight * 0.6,
        maxHeight: screenHeight * 0.8,
        minWidth: screenWidth * 0.4,
        maxWidth: screenWidth * 0.8,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(24),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            alignment: Alignment.center,
            children: [
              InteractiveViewer(
                transformationController: _transformationController,
                minScale: _minScale,
                maxScale: _maxScale,
                child: Image.asset(widget.imagePath),
                onInteractionEnd: (details) {
                  if (_transformationController.value.getMaxScaleOnAxis() <
                      1.0) {
                    _transformationController.value = Matrix4.identity();
                  }
                },
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Material(
                  color: Colors.transparent,
                  child: IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.of(context).pop(),
                    color: Colors.white,
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                child: Material(
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.zoom_in),
                        onPressed: () => _zoom(1.2, constraints),
                        color: Colors.white,
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.black.withOpacity(0.5),
                        ),
                      ),
                      const SizedBox(width: 10),
                      IconButton(
                        icon: const Icon(Icons.zoom_out),
                        onPressed: () => _zoom(1 / 1.2, constraints),
                        color: Colors.white,
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.black.withOpacity(0.5),
                        ),
                      ),
                      const SizedBox(width: 10),
                      IconButton(
                        icon: const Icon(Icons.refresh),
                        onPressed: () {
                          _transformationController.value = Matrix4.identity();
                        },
                        color: Colors.white,
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
