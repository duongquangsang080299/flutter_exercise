import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:soccer_club_app/data/repositories/auth_repo.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final AuthRepo authRepo;

  SignInBloc({
    required this.authRepo,
  }) : super(const SignInInitial()) {
    on<SignInEmailChanged>(_onEmailChanged);
    on<SignInPasswordChanged>(_onPasswordChanged);
    on<SignInSubmitted>(_onSubmitted);
    on<TogglePasswordVisibility>(_onTogglePasswordVisibility);
  }

  void _onEmailChanged(SignInEmailChanged event, Emitter<SignInState> emit) {
    final email = event.email;
    emit(state.copyWith(
      email: email,
      isButtonActive: _validateButtonState(email, state.password),
    ));
  }

  void _onPasswordChanged(
      SignInPasswordChanged event, Emitter<SignInState> emit) {
    final password = event.password;
    emit(state.copyWith(
      password: password,
      isButtonActive: _validateButtonState(state.email, password),
    ));
  }

  void _onTogglePasswordVisibility(
      TogglePasswordVisibility event, Emitter<SignInState> emit) {
    emit(state.copyWith(showPassword: !state.showPassword));
  }

  void _onSubmitted(SignInSubmitted event, Emitter<SignInState> emit) async {
    if (state.isButtonActive) {
      emit(const SignInLoading());
      try {
        await authRepo.signIn(email: state.email, password: state.password);
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setBool('isLoggedIn', true);
        emit(const SignInSuccess());
      } catch (_) {
        emit(SignInError(errorMessage: 'Failed to sign in: $_'));
      }
    }
  }

  bool _validateButtonState(String email, String password) {
    return email.isNotEmpty && password.isNotEmpty;
  }
}

enum AuthStatus {
  initial,
  inProgress,
  success,
  failure,
}

extension AuthStatusExtensions on AuthStatus {
  bool get isInProgress => this == AuthStatus.inProgress;
  bool get isSuccess => this == AuthStatus.success;
  bool get isFailure => this == AuthStatus.failure;
}
