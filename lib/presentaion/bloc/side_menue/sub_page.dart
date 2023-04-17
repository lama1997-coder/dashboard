import 'package:flutter_bloc/flutter_bloc.dart';

class SubPageCubit extends Cubit<int> {
  SubPageCubit() : super(0);

  void select(int index) => emit(index);
}
