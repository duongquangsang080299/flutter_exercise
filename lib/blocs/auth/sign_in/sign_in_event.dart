part of 'sign_in_bloc.dart';

@immutable
abstract class SignInEvent extends Equatable {
  const SignInEvent();
  @override
  List<Object> get props => [];
}

class SignInEmailChanged extends SignInEvent {
  final String email;

  const SignInEmailChanged(this.email);

  @override
  List<Object> get props => [email];
}

class SignInPasswordChanged extends SignInEvent {
  final String password;

  const SignInPasswordChanged(this.password);

  @override
  List<Object> get props => [password];
}

class SignInSubmitted extends SignInEvent {
  final String email;
  final String password;

  const SignInSubmitted({
    required this.email,
    required this.password,
  });
}

class TogglePasswordVisibility extends SignInEvent {
  const TogglePasswordVisibility();
}

class ToggleValidatorEvent extends SignInEvent {}
