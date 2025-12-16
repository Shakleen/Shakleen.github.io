part of '../main.dart';

class _PiiDetectionSection extends StatelessWidget {
  const _PiiDetectionSection({super.key});

  @override
  Widget build(BuildContext context) {
    {
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
                _CaseStudyHeader(
                  3,
                  "PII Data Detection",
                  "Identify and classify token as PII",
                  [
                    FontAwesome.python_brand,
                    Icons.flutter_dash_sharp,
                    FontAwesome.docker_brand,
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
}
