part of '../main.dart';

class _FlashLearnSection extends StatelessWidget {
  const _FlashLearnSection({super.key});

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
            children: [_CaseStudyHeader(1, "Flash Learn")],
          ),
        ),
      ),
    );
  }
}
