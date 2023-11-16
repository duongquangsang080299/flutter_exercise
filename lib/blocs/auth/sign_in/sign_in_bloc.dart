import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:soccer_club_app/data/models/sign_in/sign_in_model.dart';
import 'package:soccer_club_app/data/repositories/auth_repo.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

/// SignIn Bloc
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final SignInState initialState;
  final AuthRepo authRepo;

  SignInBloc({
    required this.initialState,
    required this.authRepo,
  }) : super(initialState) {
    on<SignInFormChangedEvent>(_onSignInFormChanged);
    on<SignInSubmittedEvent>(_onSubmitted);
    on<TogglePasswordVisibility>(_onTogglePasswordVisibility);
  }
  void _onSignInFormChanged(
      SignInFormChangedEvent event, Emitter<SignInState> emit) {
    // final formValid = event.form.formKey.currentState!.validate() || false;
    /// Todo : Update
    emit(SignInChangedState(
        form: event.form.copyWith(
      formValid: formValid,
    )));
  }

  void _onSubmitted(
      SignInSubmittedEvent event, Emitter<SignInState> emit) async {
    try {
      if (event.form.formValid) {
        emit(SignInLoadingState(form: event.form.copyWith(processing: true)));
        await authRepo.signIn(
          email: event.email,
          password: event.password,
        );
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setBool('isLoggedIn', true);
        emit(SignInSuccessState(
          form: event.form.copyWith(goSignIn: true, processing: false),
        ));
      }
    } catch (e) {
      emit(SignInErrorState(
        form: event.form.copyWith(processing: false),
      ));
    }
  }

  void _onTogglePasswordVisibility(
      TogglePasswordVisibility event, Emitter<SignInState> emit) {
    if (state is SignInChangedState) {
      final signInChangedState = state as SignInChangedState;
      emit(SignInChangedState(
        form: signInChangedState.form.copyWith(
          showPassword: !signInChangedState.form.showPassword,
        ),
      ));
    }
  }
}
