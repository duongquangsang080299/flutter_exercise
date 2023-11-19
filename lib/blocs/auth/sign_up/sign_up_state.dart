/// sign_up_state.dart
part of 'sign_up_bloc.dart';

SignUpFormModel emptySignUpState = const SignUpFormModel(
  password: '',
  username: '',
  email: '',
  usernameError: '',
  emailError: '',
  passwordError: '',
  usernameValid: false,
  emailValid: false,
  passwordValid: false,
  isValid: false,
);

abstract class SignUpState extends Equatable {
  final SignUpFormModel form;
  final bool showPassword;
  const SignUpState({
    this.showPassword = false,
    required this.form,
  }) : super();

  @override
  List<Object> get props => (['SignUpState', form]);
}

class SignUpInitialState extends SignUpState {
  const SignUpInitialState(SignUpFormModel form) : super(form: form);

  @override
  List<Object> get props => (['SignUpInitialState ', form]);
}

class SignUpChangedState extends SignUpState {
  const SignUpChangedState({
    required SignUpFormModel form,
  }) : super(
          form: form,
        );

  @override
  List<Object> get props => (['SignUpChangedState', form]);
}

class SignUpHiddenPasswordState extends SignUpState {
  const SignUpHiddenPasswordState({
    required bool showPassword,
    required SignUpFormModel form,
  }) : super(showPassword: showPassword, form: form);

  @override
  List<Object> get props => ([showPassword, form]);
}

class SignUpLoadingState extends SignUpState {
  const SignUpLoadingState({required SignUpFormModel form}) : super(form: form);

  @override
  List<Object> get props => (['SignUpLoadingState', form]);
}

class SignUpSuccessState extends SignUpState {
  const SignUpSuccessState({required SignUpFormModel form}) : super(form: form);

  @override
  List<Object> get props => (['SignUpSuccessState', form]);
}

class SignUpErrorState extends SignUpState {
  const SignUpErrorState({
    required SignUpFormModel form,
  }) : super(form: form);

  @override
  List<Object> get props => (['SignUpErrorState', form]);
}
