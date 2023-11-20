import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:soccer_club_app/core/utils/validator_utils.dart';
import 'package:soccer_club_app/data/repositories/auth_repo.dart';
import 'package:soccer_club_app/presentations/view_models/auth/sign_in_view_model.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final SignInState initialState;
  final AuthRepo authRepo;

  SignInBloc({
    required this.initialState,
    required this.authRepo,
  }) : super(initialState) {
    on<SignInEmailChangedEvent>(_onEmailChanged);
    on<SignInPasswordChangedEvent>(_onPasswordChanged);
    on<SignInSubmittedEvent>(_onSubmitted);
    on<TogglePasswordVisibility>(_onTogglePasswordVisibility);
  }

  void _onEmailChanged(
    SignInEmailChangedEvent event,
    Emitter<SignInState> emit,
  ) {
    final emailError = InputValidationMixin.validEmail(event.form.email) ?? '';
    final emailValid = emailError.isEmpty;
    emit(SignInChangedState(
      form: event.form.copyWith(
        emailError: emailError,
        emailValid: emailValid,
      ),
    ));
  }

  void _onPasswordChanged(
    SignInPasswordChangedEvent event,
    Emitter<SignInState> emit,
  ) {
    final passwordError =
        InputValidationMixin.validPassword(event.form.password) ?? '';
    final passwordValid = passwordError.isEmpty;
    emit(SignInChangedState(
      form: event.form.copyWith(
          passwordError: passwordError,
          formValid: passwordValid && state.form.emailValid),
    ));
  }

  void _onSubmitted(
      SignInSubmittedEvent event, Emitter<SignInState> emit) async {
    try {
      emit(SignInLoadingState(form: event.form));
      // Perform sign-in logic
      await authRepo.signIn(
        email: event.form.email,
        password: event.form.password,
      );

      // Save the login status to SharedPreferences
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setBool('isLoggedIn', true);

      // Update the state on successful login
      emit(SignInSuccessState(
          form: event.form.copyWith(
              formValid: state.form.emailValid && state.form.passwordValid)));
    } catch (e) {
      // Handle errors during sign-in
      emit(SignInErrorState(form: event.form));
    }
  }

  void _onTogglePasswordVisibility(
    TogglePasswordVisibility event,
    Emitter<SignInState> emit,
  ) {
    emit(SignInHiddenPasswordState(
        form: state.form.copyWith(showPassword: !event.showPassword)));
  }
}
