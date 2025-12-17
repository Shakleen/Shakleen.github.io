part of '../main.dart';

class _CaseStudySection extends StatelessWidget {
  final String title;
  final String shortDescription;
  final String detailsFilePath;
  final int index;
  final List<String> logoPaths;

  const _CaseStudySection({
    required this.title,
    required this.shortDescription,
    required this.detailsFilePath,
    required this.index,
    required this.logoPaths,
  });

  @override
  Widget build(BuildContext context) {
    return _Section(
      child: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.85,
          height: MediaQuery.of(context).size.height * 0.85,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _CaseStudyHeader(index, title, shortDescription, logoPaths),
              Divider(height: 4),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(flex: 2, child: _Details(filePath: detailsFilePath)),
                  Expanded(flex: 4, child: Placeholder(color: Colors.green)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Details extends StatelessWidget {
  final String filePath;

  const _Details({required this.filePath});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: rootBundle.loadString(filePath),
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        if (snapshot.hasData) {
          return Markdown(
            data: snapshot.data!,
            shrinkWrap: true,
            selectable: true,
          );
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
