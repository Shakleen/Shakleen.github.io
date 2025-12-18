import 'package:flutter_bloc/flutter_bloc.dart';

enum Section { about, flashLearn, pii, newsBias }

final Map<Section, String> sectionToName = const {
  Section.about: "About",
  Section.flashLearn: "Flash Learn",
  Section.pii: "Detect PII",
  Section.newsBias: "News Bias",
};
final Map<Section, int> sectionToIndex = const {
  Section.about: 0,
  Section.flashLearn: 1,
  Section.pii: 2,
  Section.newsBias: 3,
};

class SectionCubit extends Cubit<Section> {
  SectionCubit() : super(Section.about);

  void updateSection(Section section) {
    emit(section);
  }
}
