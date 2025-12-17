import 'package:flutter_bloc/flutter_bloc.dart';

enum Section { About, FlashLearn, ProductionMl, NewsBias }

final Map<Section, String> sectionToName = const {
  Section.About: "About",
  Section.FlashLearn: "Flash Learn",
  Section.ProductionMl: "Production ML",
  Section.NewsBias: "News Bias",
};
final Map<Section, int> sectionToIndex = const {
  Section.About: 0,
  Section.FlashLearn: 1,
  Section.ProductionMl: 2,
  Section.NewsBias: 3,
};

class SectionCubit extends Cubit<Section> {
  SectionCubit() : super(Section.About);

  void updateSection(Section section) {
    emit(section);
  }
}
