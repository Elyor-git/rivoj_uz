import 'package:bloc/bloc.dart';
import 'obscure_event.dart';
import 'obscure_states.dart';

class ObscureBloc extends Bloc<ObscureEvents, ObscureStates> {
  ObscureBloc() : super(const ObscureStates()) {
    on<EnabledOrDisabledObscure>(_enabledOrDisabledObscure);
  }

  void _enabledOrDisabledObscure(
      EnabledOrDisabledObscure events, Emitter<ObscureStates> emit) {
    emit(state.copyWith(isObscure: !state.isObscure));
  }
}
