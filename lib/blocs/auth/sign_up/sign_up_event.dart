part of 'sign_up_bloc.dart';

@immutable
abstract class SignUpEvent {}

class AuthSignUpEvent extends SignUpEvent {
  final String email;
  final String password;

  AuthSignUpEvent({
    required this.email,
    required this.password,
  });
}
