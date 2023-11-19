import 'package:bloc/bloc.dart';

class ChoiceDiaseCubit extends Cubit<List<int>> {
  ChoiceDiaseCubit() : super([]);

  void addChoice(int index) {
    emit([...state, index]);
  }

  void removeChoice(int index) {
    emit(state.where((element) => element != index).toList());
  }

  void reset(){
    emit([]);
  }
}
