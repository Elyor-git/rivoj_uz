import 'package:equatable/equatable.dart';

class ObscureStates extends Equatable {
  const ObscureStates({this.isObscure = false});

  final bool isObscure;

  ObscureStates copyWith({bool? isObscure}) => ObscureStates(
        isObscure: isObscure ?? this.isObscure,
      );

  @override
  List<Object?> get props => [isObscure];
}
