import 'package:flutter_bloc/flutter_bloc.dart';

class MessageBloc extends Cubit<int> {
  MessageBloc() : super(0);

  void select(int index) => emit(index);
}
