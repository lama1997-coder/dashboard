import 'package:flutter_bloc/flutter_bloc.dart';

class OpenMenueCubit extends Cubit<bool> {
  OpenMenueCubit() : super(false);

  void closeMenue() => emit(!state);
}
