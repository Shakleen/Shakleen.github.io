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
            children: [
              _CaseStudyHeader(
                1,
                "Flash Learn",
                "AI-Powered Adaptive Learning Platform",
                [
                  FontAwesome.python_brand,
                  FontAwesome.golang_brand,
                  BoxIcons.bxl_flutter,
                  FontAwesome.docker_brand,
                ],
              ),
              Divider(height: 4),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: FutureBuilder(
                      future: rootBundle.loadString('assets/markdowns/flash_learn.md'),
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
                    ),
                  ),
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
