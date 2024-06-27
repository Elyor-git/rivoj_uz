import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:rivoj_uz_project/feature/auth/repository/login_repository.dart';

import 'login_states.dart';

part 'login_event.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {


  LoginBloc() : super(const LoginState()) {
    on<PhoneNumberChanged>(_onPhoneNumberChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<LoginApi>(_loginApi);
  }

  void _onPhoneNumberChanged(
      PhoneNumberChanged event, Emitter<LoginState> emit) {
    emit(state.copyWith(phoneNumber: event.phoneNumber));
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<LoginState> emit) {
    emit(state.copyWith(password: event.password));
  }

  void _loginApi(LoginApi event, Emitter<LoginState> emit) async {
    LoginRepository repository = LoginRepository();
    emit(state.copyWith(loginStatus: LoginStatus.loading));
    try {
      final user = await repository.signIn(
        phone: event.phoneNumber,
        password: event.password,
      );
      emit(state.copyWith(
        loginStatus: LoginStatus.success,
        user: user,
      ));
    } catch (e) {
      emit(state.copyWith(
        loginStatus: LoginStatus.error,
        message: e.toString(),
      ));
    }
  }
}
