import 'package:bloc/bloc.dart';

class CheckDiaseCubit extends Cubit<int> {
  CheckDiaseCubit() : super(-1);

  void addChoice(int index) {
    if (index != state) {
      emit(index);
    } else {
      removeChoice();
    }
  }

  void removeChoice() {
    emit(-1);
  }
}
