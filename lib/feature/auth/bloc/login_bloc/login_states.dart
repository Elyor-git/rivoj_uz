import 'package:equatable/equatable.dart';
import 'package:rivoj_uz_project/common/model/user_model/user_model.dart';

enum LoginStatus { initial, loading, success, error }

class LoginState extends Equatable {
  const LoginState({
    this.phoneNumber = '',
    this.password = '',
    this.message = '',
    this.loginStatus = LoginStatus.initial,
    this.user,
  });

  final String phoneNumber;
  final String password;
  final String message;
  final LoginStatus loginStatus;
  final UserModel? user;

  LoginState copyWith({
    String? phoneNumber,
    String? password,
    String? message,
    UserModel? user,
    LoginStatus? loginStatus,
  }) {
    return LoginState(
      phoneNumber: phoneNumber ?? this.phoneNumber,
      password: password ?? this.password,
      message: message ?? this.message,
      user: user ?? this.user,
      loginStatus: loginStatus ?? this.loginStatus,
    );
  }

  @override
  List<Object?> get props => [phoneNumber, password, message, loginStatus, user];
}
