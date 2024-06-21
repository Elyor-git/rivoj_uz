import 'package:equatable/equatable.dart';

enum LoginStatus { initial, loading, success, error }

class LoginState extends Equatable {
  const LoginState({
    this.phoneNumber = '',
    this.password = '',
    this.message = '',
    this.loginStatus = LoginStatus.initial,
  });

  final String phoneNumber;
  final String password;
  final String message;
  final LoginStatus loginStatus;

  LoginState copyWith({
    String? phoneNumber,
    String? password,
    String? message,
    LoginStatus? loginStatus,
  }) {
    return LoginState(
      phoneNumber: phoneNumber ?? this.phoneNumber,
      password: password ?? this.password,
      message: message ?? this.message,
      loginStatus: loginStatus ?? this.loginStatus,
    );
  }

  @override
  List<Object?> get props => [phoneNumber, password, message, loginStatus];
}
