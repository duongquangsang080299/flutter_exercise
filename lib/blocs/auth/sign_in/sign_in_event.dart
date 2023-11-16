part of 'sign_in_bloc.dart';

/// SignIn Event
abstract class SignInEvent extends Equatable {
  final SignInFormModel form;
  const SignInEvent(this.form) : super();
  @override
  List<Object> get props => [form];
}

// SignIn form changed event
class SignInFormChangedEvent extends SignInEvent {
  final SignInFormModel form;
  const SignInFormChangedEvent({
    required this.form,
  }) : super(form);
  @override
  List<Object> get props => ['SignInFormChangedEvent', form];
}

// SignIn submitted event
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
  const TogglePasswordVisibility(super.form);
}

class ChangeFocusedFieldEvent extends SignInEvent {
  final FocusedField focusedField;

  const ChangeFocusedFieldEvent({
    required SignInFormModel form,
  }) : super(form);
  @override
  List<Object> get props => [
        'ChangeFocusedFieldEvent',
        form,
      ];
}
