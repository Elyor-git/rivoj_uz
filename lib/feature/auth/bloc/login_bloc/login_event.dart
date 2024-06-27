part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class PhoneNumberChanged extends LoginEvent {
  const PhoneNumberChanged({required this.phoneNumber});

  final String phoneNumber;

  @override
  List<Object> get props => [phoneNumber];
}

class PasswordChanged extends LoginEvent {
  const PasswordChanged({required this.password});

  final String password;

  @override
  List<Object> get props => [password];
}

class LoginApi extends LoginEvent {
  const LoginApi({
    required this.phoneNumber,
    required this.password,
  });

  final String phoneNumber;
  final String password;
}
