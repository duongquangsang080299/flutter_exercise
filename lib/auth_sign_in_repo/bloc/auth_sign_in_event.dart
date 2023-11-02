part of 'auth_sign_in_bloc.dart';

@immutable
abstract class AuthSignInEvent {}

class EnterSignInEvent extends AuthSignInEvent {
  final String email;
  final String password;

  EnterSignInEvent({
    required this.email,
    required this.password,
  });
}
