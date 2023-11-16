part of 'sign_in_bloc.dart';

/// SignIn State
abstract class SignInState extends Equatable {
  final SignInFormModel form;
  const SignInState({
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

// Handle SignIn changed state
class SignInChangedState extends SignInState {
  const SignInChangedState({required SignInFormModel form}) : super(form: form);
  @override
  List<Object> get props => (['SignInChangedState', form]);
}

// Handle process SignIn state
class SignInLoadingState extends SignInState {
  const SignInLoadingState({required SignInFormModel form}) : super(form: form);
  @override
  List<Object> get props => (['SignInLoadingState', form]);
}

// Handle success SignIn state
class SignInSuccessState extends SignInState {
  const SignInSuccessState({required SignInFormModel form}) : super(form: form);

  @override
  List<Object> get props => (['SignInSuccessState', form]);
}

// Handle error SignIn state
class SignInErrorState extends SignInState {
  const SignInErrorState({
    required SignInFormModel form,
  }) : super(form: form);

  @override
  List<Object> get props => ([
        'SignInErrorState',
        form,
      ]);
}

// SignIn form model
SignInFormModel emptySignInState = SignInFormModel(
  formValid: false,
  password: '',
  email: '',
  focusedField: FocusedField.email,
  processing: false,
  goSignIn: false,
  showPassword: false,
  formKey: GlobalKey<FormState>(),
);
