import 'package:flutter_bloc/flutter_bloc.dart';

enum Section { About, FlashLearn, ProductionMl, NewsBias }

class SectionCubit extends Cubit<Section> {
  SectionCubit() : super(Section.About);

  void updateSection(Section section) {
    emit(section);
  }
}
