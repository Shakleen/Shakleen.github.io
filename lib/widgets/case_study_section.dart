part of '../main.dart';

class _CaseStudySection extends StatelessWidget {
  final String title;
  final String shortDescription;
  final int index;
  final List<String> logoPaths;
  final List<FeatureModel> features;
  final String problemStatementMdPath;

  const _CaseStudySection({
    required this.title,
    required this.shortDescription,
    required this.index,
    required this.logoPaths,
    required this.problemStatementMdPath,
    required this.features,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CaseStudySectionCubit>(
      create: (BuildContext context) => CaseStudySectionCubit(),
      child: _Section(
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
                _MarkdownWidget(filePath: problemStatementMdPath),
                _FeatureTabBar(features: features),
                _FeatureDescription(features: features),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _FeatureDescription extends StatelessWidget {
  const _FeatureDescription({required this.features});

  final List<FeatureModel> features;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CaseStudySectionCubit, int>(
      builder: (context, index) {
        return Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: _MarkdownWidget(filePath: features[index].markdownPath),
            ),
            Expanded(flex: 4, child: _ImageWidget(feature: features[index])),
          ],
        );
      },
    );
  }
}

class _ImageWidget extends StatelessWidget {
  final FeatureModel feature;

  const _ImageWidget({required this.feature});

  @override
  Widget build(BuildContext context) {
    final themeManager = Provider.of<ThemeManager>(context);
    String? imagePath;

    if (themeManager.themeMode == ThemeMode.dark) {
      imagePath = feature.darkImgPath ?? feature.lightImgPath;
    } else {
      imagePath = feature.lightImgPath ?? feature.darkImgPath;
    }

    if (imagePath == null) {
      return Placeholder(color: Colors.green);
    }

    return Image.asset(imagePath, fit: BoxFit.fill);
  }
}

class _FeatureTabBar extends StatelessWidget {
  const _FeatureTabBar({required this.features});

  final List<FeatureModel> features;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: features
          .map(
            (FeatureModel model) =>
                _FeatureTab(index: features.indexOf(model), model: model),
          )
          .toList(),
    );
  }
}

class _FeatureTab extends StatelessWidget {
  final int index;
  final FeatureModel model;

  const _FeatureTab({required this.index, required this.model});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CaseStudySectionCubit, int>(
      builder: (context, inViewIndex) {
        late final Color textColor, buttonColor;
        final bool isInView = inViewIndex == index;

        if (isInView) {
          textColor = Theme.of(context).colorScheme.onPrimary;
          buttonColor = Theme.of(context).colorScheme.primary;
        } else {
          textColor = Theme.of(context).colorScheme.primary;
          buttonColor = Theme.of(context).colorScheme.onPrimary;
        }

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2.0),
          child: TextButton(
            onPressed: () {
              context.read<CaseStudySectionCubit>().update(index);
            },
            style: TextButton.styleFrom(backgroundColor: buttonColor),
            child: Text(model.title, style: TextStyle(color: textColor)),
          ),
        );
      },
    );
  }
}

class _MarkdownWidget extends StatelessWidget {
  final String filePath;

  const _MarkdownWidget({required this.filePath});

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
