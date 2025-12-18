import 'package:flutter_bloc/flutter_bloc.dart';

enum CaseStudySection { technicalDetail, keyOutcomes, lessonsLearnt }

final Map<CaseStudySection, String> caseStudySectionToName = const {
  CaseStudySection.technicalDetail: "Technical Detail",
  CaseStudySection.keyOutcomes: "Key Outcomes",
  CaseStudySection.lessonsLearnt: "Lessons Learnt",
};

class CaseStudySectionCubit extends Cubit<CaseStudySection> {
  CaseStudySectionCubit() : super(CaseStudySection.technicalDetail);

  void update(CaseStudySection section) => emit(section);
}
