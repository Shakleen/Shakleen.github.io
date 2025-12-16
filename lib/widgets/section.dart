part of '../main.dart';

class _Section extends StatelessWidget {
  final Widget child;

  const _Section({required this.child});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final appBarHeight = AppBar().preferredSize.height;
    final statusBarHeight = MediaQuery.of(context).padding.top;
    final double height =
        MediaQuery.of(context).size.height - appBarHeight - statusBarHeight;

    return SizedBox(width: width, height: height, child: child);
  }
}
