import 'package:flutter/material.dart';

class SectionWidget extends StatelessWidget {
  final Widget child;

  const SectionWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double appBarHeight = AppBar().preferredSize.height;
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final double height =
        MediaQuery.of(context).size.height - appBarHeight - statusBarHeight;

    return SizedBox(width: width, height: height, child: child);
  }
}
