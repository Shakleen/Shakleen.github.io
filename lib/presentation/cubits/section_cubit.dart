import 'package:flutter_bloc/flutter_bloc.dart';

enum Section { about, flashLearn, prof, pii }

final Map<Section, String> sectionToName = const {
  Section.about: "About",
  Section.flashLearn: "Flash Learn",
  Section.prof: "Professional",
  Section.pii: "Detect PII",
};
final Map<Section, int> sectionToIndex = const {
  Section.about: 0,
  Section.flashLearn: 1,
  Section.prof: 2,
  Section.pii: 3,
};

class SectionCubit extends Cubit<Section> {
  SectionCubit() : super(Section.about);

  void updateSection(Section section) {
    emit(section);
  }
}
