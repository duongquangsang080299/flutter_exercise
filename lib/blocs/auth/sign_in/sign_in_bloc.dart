// import 'package:equatable/equatable.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:formz/formz.dart';
// import 'package:bloc/bloc.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:soccer_club_app/data/models/email_model.dart';
// import 'package:soccer_club_app/data/repositories/auth_repo.dart';
// import 'package:soccer_club_app/data/models/password_model.dart';
// part 'sign_in_event.dart';
// part 'sign_in_state.dart';

// class SignInBloc extends Bloc<SignInEvent, SignInState> {
//   SignInBloc({
//     required AuthRepo authRepo,
//   })  : _authRepo = authRepo,
//         super(const SignInState()) {
//     on<SignInEmailChanged>(_onEmailChanged);
//     on<SignInPasswordChanged>(_onPasswordChanged);
//     on<SignInSubmitted>(_onSubmitted);
//   }

//   final AuthRepo _authRepo;
//   void _onEmailChanged(
//     SignInEmailChanged event,
//     Emitter<SignInState> emit,
//   ) {
//     final email = Email.dirty(event.email);
//     emit(state.copyWith(
//       email: email,
//       isValid: Formz.validate([state.password, email]),
//     ));
//   }

//   void _onPasswordChanged(
//     SignInPasswordChanged event,
//     Emitter<SignInState> emit,
//   ) {
//     final password = Password.dirty(event.password);
//     emit(state.copyWith(
//       password: password,
//       isValid: Formz.validate([state.email, password]),
//     ));
//   }

//   Future<void> _onSubmitted(
//     SignInSubmitted event,
//     Emitter<SignInState> emit,
//   ) async {
//     if (state.isValid) {
//       emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
//       try {
//         await _authRepo.signIn(
//             email: state.email.value, password: state.password.value);
//         final SharedPreferences prefs = await SharedPreferences.getInstance();
//         prefs.setBool('isLoggedIn', true);
//         emit(state.copyWith(status: FormzSubmissionStatus.success));
//       } catch (_) {
//         emit(state.copyWith(status: FormzSubmissionStatus.failure));
//       }
//     }
//   }
// }

// class SignInBloc extends Bloc<SignInEvent, SignInState> {
//   SignInBloc({required this.repo}) : super(SignInInitial()) {
//     on<AuthSignInEvent>((event, emit) async {
//       try {
//         emit(SignInLoading());
//         await repo.signIn(email: event.email, password: event.password);
//         final SharedPreferences prefs = await SharedPreferences.getInstance();
//         prefs.setBool('isLoggedIn', true);
//         emit(SignInSuccess());
//       } catch (e) {
//         print(e);
//         emit(SignInError(errorMessage: 'Failed to sign in: $e'));
//       }
//     });

//     on<UpdateFormEvent>((event, emit) {
//       final isButtonActive =
//           event.email.isNotEmpty && event.password.isNotEmpty;
//       emit(UpdateForm(email: event.email, password: event.password, isButtonActive: isButtonActive));
//     });
//   } 

//   final AuthRepo repo;
// }
