/// reset_password_state.dart
part of 'reset_password_bloc.dart';

ResetPasswordFormModel emptyResetPasswordState = const ResetPasswordFormModel(
  email: '',
  emailError: '',
  errorMessage: '',
  emailValid: false,
);

abstract class ResetPasswordState extends Equatable {
  final ResetPasswordFormModel form;
  const ResetPasswordState({
    required this.form,
  }) : super();

  @override
  List<Object> get props => (['ResetPasswordState', form]);
}

class ResetPasswordInitialState extends ResetPasswordState {
  const ResetPasswordInitialState(ResetPasswordFormModel form)
      : super(form: form);

  @override
  List<Object> get props => (['ResetPasswordInitialState ', form]);
}

class ResetPasswordChangedState extends ResetPasswordState {
  const ResetPasswordChangedState({
    required ResetPasswordFormModel form,
  }) : super(form: form);

  @override
  List<Object> get props => ['ResetPasswordChangedState', form];
}

class ResetPasswordLoadingState extends ResetPasswordState {
  const ResetPasswordLoadingState({required ResetPasswordFormModel form})
      : super(form: form);

  @override
  List<Object> get props => ['ResetPasswordLoadingState', form];
}

class ResetPasswordSuccessState extends ResetPasswordState {
  const ResetPasswordSuccessState({required ResetPasswordFormModel form})
      : super(form: form);

  @override
  List<Object> get props => ['ResetPasswordSuccessState', form];
}

class ResetPasswordErrorState extends ResetPasswordState {
  final String errorMessage;

  const ResetPasswordErrorState({
    required this.errorMessage,
    required ResetPasswordFormModel form,
  }) : super(form: form);

  @override
  List<Object> get props => ['ResetPasswordErrorState', form, errorMessage];
}
