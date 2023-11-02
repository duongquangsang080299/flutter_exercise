part of 'auth_sign_up_bloc.dart';

@immutable
abstract class AuthSignUpEvent {}

class SendDataEvent extends AuthSignUpEvent {
  final String email;
  final String password;

  SendDataEvent({
    required this.email,
    required this.password,
  });
}
