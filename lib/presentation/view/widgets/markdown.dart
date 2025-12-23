import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';
import 'package:shimmer/shimmer.dart';

class MarkdownWidget extends StatelessWidget {
  final String filePath;

  const MarkdownWidget({super.key, required this.filePath});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: rootBundle.loadString(filePath),
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        if (snapshot.hasData) {
          return AbsorbPointer(
            child: Markdown(
              data: snapshot.data!,
              shrinkWrap: true,
              selectable: false,
              physics: const NeverScrollableScrollPhysics(),
            ),
          );
        }
        return Shimmer.fromColors(
          baseColor: Theme.of(context).colorScheme.surfaceContainerHighest,
          highlightColor: Theme.of(context).colorScheme.surfaceContainerHigh,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 20.0,
                color: Colors.white,
                margin: const EdgeInsets.only(bottom: 8.0),
              ),
              Container(
                width: double.infinity,
                height: 20.0,
                color: Colors.white,
                margin: const EdgeInsets.only(bottom: 8.0),
              ),
              Container(width: 150.0, height: 20.0, color: Colors.white),
            ],
          ),
        );
      },
    );
  }
}
