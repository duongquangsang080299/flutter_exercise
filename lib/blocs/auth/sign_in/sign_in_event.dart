// part of 'sign_in_bloc.dart';

// @immutable
// abstract class SignInEvent extends Equatable {
//   const SignInEvent();
//   @override
//   List<Object> get props => [];
// }

// final class SignInEmailChanged extends SignInEvent {
//   const SignInEmailChanged(this.email);

//   final String email;
//   @override
//   List<Object> get props => [email];
// }

// final class SignInPasswordChanged extends SignInEvent {
//   const SignInPasswordChanged(this.password);

//   final String password;
//   @override
//   List<Object> get props => [password];
// }

// final class SignInSubmitted extends SignInEvent {
//   const SignInSubmitted();
// }

// class AuthSignInEvent extends SignInEvent {
//   final String email;
//   final String password;

//   const AuthSignInEvent({
//     required this.email,
//     required this.password,
//   });
// }

// class UpdateFormEvent extends SignInEvent {
//   final String email;
//   final String password;

//   const UpdateFormEvent({required this.email, required this.password});
// }

// class EmailEvent extends SignInEvent {
//   final String email;

//   EmailEvent({required this.email});
// }

// class PasswordEvent extends SignInEvent {
//   final String password;

//   PasswordEvent({required this.password});
// }
