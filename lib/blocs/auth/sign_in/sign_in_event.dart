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
  const SignInSubmitted();
}

class AuthSignInEvent extends SignInEvent {
  final String email;
  final String password;

  const AuthSignInEvent({
    required this.email,
    required this.password,
  });
}

class UpdateFormEvent extends SignInEvent {
  final String email;
  final String password;

  const UpdateFormEvent({required this.email, required this.password});
}

class EmailEvent extends SignInEvent {
  final String email;

  EmailEvent({required this.email});
}

class PasswordEvent extends SignInEvent {
  final String password;

  PasswordEvent({required this.password});
}


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
