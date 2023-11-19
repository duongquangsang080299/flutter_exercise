import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:soccer_club_app/core/utils/validator_utils.dart';
import 'package:soccer_club_app/data/repositories/auth_repo.dart';
import 'package:soccer_club_app/presentations/view_models/auth/sign_up/sign_up_view_model.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final SignUpState initialState;
  final AuthRepo authRepo;

  SignUpBloc({
    required this.initialState,
    required this.authRepo,
  }) : super(initialState) {
    on<SignUpUsernameChangedEvent>(_onUsernameChanged);
    on<SignUpEmailChangedEvent>(_onEmailChanged);
    on<SignUpPasswordChangedEvent>(_onPasswordChanged);
    on<SignUpSubmittedEvent>(_onSubmitted);
    on<TogglePasswordVisibility>(_onTogglePasswordVisibility);
  }
  void _onUsernameChanged(
    SignUpUsernameChangedEvent event,
    Emitter<SignUpState> emit,
  ) {
    // Add your validation logic for the username
    final usernameError =
        InputValidationMixin.validUserName(event.form.username) ?? '';
    final usernameValid = usernameError.isEmpty;
    emit(SignUpChangedState(
      form: event.form.copyWith(
        usernameError: usernameError,
        usernameValid: usernameValid,
      ),
    ));
  }

  void _onEmailChanged(
    SignUpEmailChangedEvent event,
    Emitter<SignUpState> emit,
  ) {
    final emailError = InputValidationMixin.validEmail(event.form.email) ?? '';
    final emailValid = emailError.isEmpty;
    emit(SignUpChangedState(
      form: event.form.copyWith(
        emailError: emailError,
        emailValid: emailValid,
      ),
    ));
  }

  void _onPasswordChanged(
    SignUpPasswordChangedEvent event,
    Emitter<SignUpState> emit,
  ) {
    final passwordError =
        InputValidationMixin.validPassword(event.form.password) ?? '';
    final passwordValid = passwordError.isEmpty;
    emit(SignUpChangedState(
      form: event.form.copyWith(
        passwordError: passwordError,
        passwordValid: passwordValid,
      ),
    ));
  }

  void _onSubmitted(
      SignUpSubmittedEvent event, Emitter<SignUpState> emit) async {
    try {
      emit(SignUpLoadingState(form: event.form));
      // Perform sign-in logic
      await authRepo.signUp(
        email: event.email,
        password: event.password,
      );

      // Save the login status to SharedPreferences
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setBool('isLoggedIn', true);

      // Update the state on successful login
      emit(SignUpSuccessState(form: event.form));
    } catch (e) {
      // Handle errors during sign-in
      emit(SignUpErrorState(form: event.form));
    }
  }

  void _onTogglePasswordVisibility(
    TogglePasswordVisibility event,
    Emitter<SignUpState> emit,
  ) {
    emit(SignUpHiddenPasswordState(
        form: state.form, showPassword: !event.showPassword));
  }
}
