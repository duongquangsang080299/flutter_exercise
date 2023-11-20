// sign_in_state.dart
part of 'sign_in_bloc.dart';

SignInFormModel emptySignInState = const SignInFormModel(
  password: '',
  email: '',
  emailError: '',
  passwordError: '',
  formValid: false,
  showPassword: false,
  emailValid: false,
  passwordValid: false,
);

abstract class SignInState extends Equatable {
  final SignInFormModel form;

  const SignInState({
    required this.form,
  }) : super();

  @override
  List<Object> get props => ['SignInState', form];
}

class SignInInitialState extends SignInState {
  const SignInInitialState(SignInFormModel form) : super(form: form);

  @override
  List<Object> get props => ['SignInInitialState ', form];
}

class SignInChangedState extends SignInState {
  const SignInChangedState({required SignInFormModel form}) : super(form: form);

  @override
  List<Object> get props => ['SignInChangedState', form];
}

class SignInHiddenPasswordState extends SignInState {
  const SignInHiddenPasswordState({
    required SignInFormModel form,
  }) : super(form: form);

  @override
  List<Object> get props => [form];
}

class SignInLoadingState extends SignInState {
  const SignInLoadingState({required SignInFormModel form}) : super(form: form);

  @override
  List<Object> get props => ['SignInLoadingState', form];
}

class SignInSuccessState extends SignInState {
  const SignInSuccessState({required SignInFormModel form}) : super(form: form);

  @override
  List<Object> get props => ['SignInSuccessState', form];
}

class SignInErrorState extends SignInState {
  const SignInErrorState({
    required SignInFormModel form,
  }) : super(form: form);

  @override
  List<Object> get props => ['SignInErrorState', form];
}
