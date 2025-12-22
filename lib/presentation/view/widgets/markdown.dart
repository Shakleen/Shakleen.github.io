import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';

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
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
