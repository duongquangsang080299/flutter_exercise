import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:soccer_club_app/core/constant/app_exceptions.dart';
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
    final usernameError =
        InputValidationMixin.validUserName(event.form.username) ?? '';
    final usernameValid = usernameError.isEmpty;
    emit(SignUpChangedState(
      form: event.form.copyWith(
        usernameError: usernameError,
        usernameValid: usernameValid,
        formValid:
            usernameValid && event.form.emailValid && event.form.passwordValid,
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
        formValid:
            emailValid && event.form.usernameValid && event.form.passwordValid,
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
        formValid:
            passwordValid && event.form.usernameValid && event.form.emailValid,
      ),
    ));
  }

  void _onSubmitted(
      SignUpSubmittedEvent event, Emitter<SignUpState> emit) async {
    try {
      emit(SignUpLoadingState(form: event.form));
      // Perform sign-up logic
      await authRepo.signUp(
        email: event.form.email,
        password: event.form.password,
        username: event.form.username,
      );
      // Update the state on successful create account
      emit(SignUpSuccessState(
          form: event.form.copyWith(
              formValid: state.form.usernameValid &&
                  state.form.emailValid &&
                  state.form.passwordValid)));
    } catch (e) {
      // Handle errors during sign-up
      emit(SignUpErrorState(
        form: event.form,
        errorMessage: AppExceptionMessages.badRequest,
      ));
    }
  }

  void _onTogglePasswordVisibility(
    TogglePasswordVisibility event,
    Emitter<SignUpState> emit,
  ) {
    emit(SignUpHiddenPasswordState(
        form: state.form.copyWith(showPassword: !event.showPassword)));
  }
}
