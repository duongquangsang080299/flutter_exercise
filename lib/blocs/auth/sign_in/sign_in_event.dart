// sign_in_event.dart
part of 'sign_in_bloc.dart';

abstract class SignInEvent extends Equatable {
  final SignInFormModel form;

  const SignInEvent(this.form) : super();

  @override
  List<Object> get props => [form];
}

class SignInEmailChangedEvent extends SignInEvent {
  final SignInFormModel form;

  const SignInEmailChangedEvent({
    required this.form,
  }) : super(form);

  @override
  List<Object> get props => ['SignInEmailChangeEvent', form];
}

class SignInPasswordChangedEvent extends SignInEvent {
  final SignInFormModel form;

  const SignInPasswordChangedEvent({
    required this.form,
  }) : super(form);

  @override
  List<Object> get props => ['SignInPasswordChangeEvent', form];
}

class SignInSubmittedEvent extends SignInEvent {
  final String email;
  final String password;

  const SignInSubmittedEvent({
    required this.email,
    required this.password,
    required SignInFormModel form,
  }) : super(form);

  @override
  List<Object> get props => ['SignInSubmittedEvent', email, password, form];
}

class TogglePasswordVisibility extends SignInEvent {
  const TogglePasswordVisibility(SignInFormModel form) : super(form);
}
