part of 'sign_in_bloc.dart';

abstract class SignInEvent extends Equatable {
  const SignInEvent();

  @override
  List<Object> get props => [];
}

class SignInEmailChangedEvent extends SignInEvent {
  final SignInFormModel form;

  const SignInEmailChangedEvent({
    required this.form,
  });
  @override
  List<Object> get props => ['SignInEmailChangeEvent', form];
}

class SignInPasswordChangedEvent extends SignInEvent {
  final SignInFormModel form;

  const SignInPasswordChangedEvent({
    required this.form,
  });

  @override
  List<Object> get props => ['SignInPasswordChangeEvent', form];
}

class SignInSubmittedEvent extends SignInEvent {
  final SignInFormModel form;

  const SignInSubmittedEvent({
    required this.form,
  });

  @override
  List<Object> get props => ['SignInSubmittedEvent', form];
}

class TogglePasswordVisibility extends SignInEvent {
  const TogglePasswordVisibility({required this.showPassword});

  final bool showPassword;

  @override
  List<Object> get props => [showPassword];
}
