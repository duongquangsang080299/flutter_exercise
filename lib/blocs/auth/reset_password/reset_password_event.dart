part of 'reset_password_bloc.dart';

abstract class ResetPasswordEvent extends Equatable {
  const ResetPasswordEvent();

  @override
  List<Object> get props => [];
}

class ResetPasswordEmaildChangedEvent extends ResetPasswordEvent {
  final ResetPasswordFormModel form;

  const ResetPasswordEmaildChangedEvent({
    required this.form,
  });
  @override
  List<Object> get props => ['ResetPasswordEmaildChangedEvent', form];
}

class ResetPasswordSubmittedEvent extends ResetPasswordEvent {
  final ResetPasswordFormModel form;

  const ResetPasswordSubmittedEvent({
    required this.form,
  });

  @override
  List<Object> get props => ['SignInSubmittedEvent', form];
}
