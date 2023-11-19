// sign_in_state.dart
part of 'sign_in_bloc.dart';

SignInFormModel emptySignInState = const SignInFormModel(
  password: '',
  email: '',
  emailError: '',
  passwordError: '',
  emailValid: false,
  passwordValid: false,
  isValid: false,
);

abstract class SignInState extends Equatable {
  final SignInFormModel form;
  final bool showPassword;
  const SignInState({
    this.showPassword = false,
    required this.form,
  }) : super();

  @override
  List<Object> get props => (['SignInState', form]);
}

class SignInInitialState extends SignInState {
  const SignInInitialState(SignInFormModel form) : super(form: form);

  @override
  List<Object> get props => (['SignInInitialState ', form]);
}

class SignInChangedState extends SignInState {
  const SignInChangedState({
    required SignInFormModel form,
  }) : super(
          form: form,
        );

  @override
  List<Object> get props => (['SignInChangedState', form]);
}

class SignInHiddenPasswordState extends SignInState {
  const SignInHiddenPasswordState({
    required bool showPassword,
    required SignInFormModel form,
  }) : super(showPassword: showPassword, form: form);

  @override
  List<Object> get props => ([showPassword, form]);
}

class SignInLoadingState extends SignInState {
  const SignInLoadingState({required SignInFormModel form}) : super(form: form);

  @override
  List<Object> get props => (['SignInLoadingState', form]);
}

class SignInSuccessState extends SignInState {
  const SignInSuccessState({required SignInFormModel form}) : super(form: form);

  @override
  List<Object> get props => (['SignInSuccessState', form]);
}

class SignInErrorState extends SignInState {
  const SignInErrorState({
    required SignInFormModel form,
  }) : super(form: form);

  @override
  List<Object> get props => (['SignInErrorState', form]);
}
