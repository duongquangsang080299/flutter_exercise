import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:soccer_club_app/core/utils/validator_utils.dart';
import 'package:soccer_club_app/data/repositories/auth_repo.dart';
import 'package:soccer_club_app/presentations/view_models/auth/reset_password/reset_password_view_model.dart';

part 'reset_password_event.dart';
part 'reset_password_state.dart';

class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  final ResetPasswordState initialState;
  final AuthRepo authRepo;

  ResetPasswordBloc({
    required this.initialState,
    required this.authRepo,
  }) : super(initialState) {
    on<ResetPasswordEmaildChangedEvent>(_onEmailChanged);
    on<ResetPasswordSubmittedEvent>(_onSubmitted);
  }

  void _onEmailChanged(
    ResetPasswordEmaildChangedEvent event,
    Emitter<ResetPasswordState> emit,
  ) {
    final emailError = InputValidationMixin.validEmail(event.form.email) ?? '';
    final emailValid = emailError.isEmpty;
    emit(ResetPasswordChangedState(
      form: event.form.copyWith(
        emailError: emailError,
        emailValid: emailValid,
      ),
    ));
  }

  void _onSubmitted(ResetPasswordSubmittedEvent event,
      Emitter<ResetPasswordState> emit) async {
    try {
      emit(ResetPasswordLoadingState(form: event.form));
      // Perform reset password logic
      await authRepo.resetPassword(
        email: event.form.email,
      );
      // Update the state on successful reset
      emit(ResetPasswordSuccessState(
          form: event.form.copyWith(emailValid: state.form.emailValid)));
    } catch (e) {
      // Handle errors
      emit(ResetPasswordErrorState(
          form: event.form, errorMessage: event.form.errorMessage ?? ''));
    }
  }
}
