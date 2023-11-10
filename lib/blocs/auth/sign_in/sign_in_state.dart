// part of 'sign_in_bloc.dart';

// final class SignInState extends Equatable {
//   const SignInState({
//     this.status = FormzSubmissionStatus.initial,
//     this.email = const Email.pure(),
//     this.password = const Password.pure(),
//     this.isValid = false,
//   });
  
//   final FormzSubmissionStatus status;
//   final Email email;
//   final Password password;
//   final bool isValid;

//   SignInState copyWith({
//     FormzSubmissionStatus? status,
//     Email? email,
//     Password? password,
//     bool? isValid,
//   }) {
//     return SignInState(
//       status: status ?? this.status,
//       email: email ?? this.email,
//       password: password ?? this.password,
//       isValid: isValid ?? this.isValid,
//     );
//   }

//   @override
//   List<Object> get props => [status, email, password];
// }
// @immutable
// abstract class SignInState {
//   final String email;
//   final String password;
//   final bool isButtonActive;

//   const SignInState({
//     required this.email,
//     required this.password,
//     required this.isButtonActive,
//   });
// }

// class SignInInitial extends SignInState {
//   const SignInInitial()
//       : super(email: '', password: '', isButtonActive: false);
// }

// class SignInLoading extends SignInState {
//   const SignInLoading()
//       : super(email: '', password: '', isButtonActive: false);
// }

// class SignInSuccess extends SignInState {
//   const SignInSuccess()
//       : super(email: '', password: '', isButtonActive: true);
// }

// class SignInError extends SignInState {
//   final String errorMessage;

//   const SignInError({required this.errorMessage})
//       : super(email: '', password: '', isButtonActive: false);
// }
