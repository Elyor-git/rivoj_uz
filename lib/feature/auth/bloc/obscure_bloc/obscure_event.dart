import 'package:equatable/equatable.dart';

abstract class ObscureEvents extends Equatable {
  const ObscureEvents();

  @override
  List<Object?> get props => [];
}

class EnabledOrDisabledObscure extends ObscureEvents {}
