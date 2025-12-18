import 'package:flutter_bloc/flutter_bloc.dart';

class CaseStudySectionCubit extends Cubit<int> {
  CaseStudySectionCubit() : super(0);

  void update(int value) => emit(value);
}
