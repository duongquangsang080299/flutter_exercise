part of 'sign_up_bloc.dart';

@immutable
abstract class SignUpEvent extends Equatable {
  const SignUpEvent();
  @override
  List<Object> get props => [];
}

class SignUpUsernameChangedEvent extends SignUpEvent {
  final SignUpFormModel form;

  const SignUpUsernameChangedEvent({
    required this.form,
  });

  @override
  List<Object> get props => ['SignUpUsernameChangedEvent', form];
}

class SignUpEmailChangedEvent extends SignUpEvent {
  final SignUpFormModel form;

  const SignUpEmailChangedEvent({
    required this.form,
  });
  @override
  List<Object> get props => ['SignUpEmailChangeEvent', form];
}

class SignUpPasswordChangedEvent extends SignUpEvent {
  final SignUpFormModel form;

  const SignUpPasswordChangedEvent({
    required this.form,
  });

  @override
  List<Object> get props => ['SignUpPasswordChangeEvent', form];
}

class SignUpSubmittedEvent extends SignUpEvent {
  final String email;
  final String password;
  final SignUpFormModel form;

  const SignUpSubmittedEvent({
    required this.email,
    required this.password,
    required this.form,
  });

  @override
  List<Object> get props => ['SignUpSubmittedEvent', email, password, form];
}

class TogglePasswordVisibility extends SignUpEvent {
  const TogglePasswordVisibility({required this.showPassword});

  final bool showPassword;

  @override
  List<Object> get props => [showPassword];
}
