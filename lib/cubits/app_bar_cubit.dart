import 'package:flutter_bloc/flutter_bloc.dart';

class AppBarCubit extends Cubit<bool> {
  AppBarCubit() : super(false);

  void showAppBar(bool show) => emit(show);
}
