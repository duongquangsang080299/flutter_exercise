import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:soccer_club_app/core/utils/validator_utils.dart';
import 'package:soccer_club_app/data/repositories/auth_repo.dart';
import 'package:soccer_club_app/presentations/view_models/auth/reset_password/reset_password_view_model.dart';

/// Import event and state classes related to the ResetPasswordBloc
part 'reset_password_event.dart';
part 'reset_password_state.dart';

// Define the ResetPasswordBloc class, which extends the Bloc class
class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  // Declare initial state and AuthRepo as instance variables
  final ResetPasswordState initialState;
  final AuthRepo authRepo;

  // Constructor for the ResetPasswordBloc class
  ResetPasswordBloc({
    required this.initialState,
    required this.authRepo,
  }) : super(initialState) {
    // Define event handlers for specific events using 'on' method
    on<ResetPasswordEmaildChangedEvent>(_onEmailChanged);
    on<ResetPasswordSubmittedEvent>(_onSubmitted);
  }

  // Event handler for ResetPasswordEmaildChangedEvent
  void _onEmailChanged(
    ResetPasswordEmaildChangedEvent event,
    Emitter<ResetPasswordState> emit,
  ) {
    // Validate email using InputValidationMixin
    final emailError = InputValidationMixin.validEmail(event.form.email) ?? '';
    // Check if email is valid
    final emailValid = emailError.isEmpty;
    // Emit a new state with updated form values
    emit(ResetPasswordChangedState(
      form: event.form.copyWith(
        emailError: emailError,
        emailValid: emailValid,
      ),
    ));
  }

  // Event handler for ResetPasswordSubmittedEvent
  void _onSubmitted(ResetPasswordSubmittedEvent event,
      Emitter<ResetPasswordState> emit) async {
    try {
      // Emit loading state while performing reset password logic
      emit(ResetPasswordLoadingState(form: event.form));
      // Perform reset password logic by calling the resetPassword method on AuthRepo
      await authRepo.resetPassword(
        email: event.form.email,
      );
      // Update the state on successful reset
      emit(ResetPasswordSuccessState(
          form: event.form.copyWith(emailValid: state.form.emailValid)));
    } catch (e) {
      // Handle errors by emitting an error state
      emit(ResetPasswordErrorState(
          form: event.form, errorMessage: event.form.errorMessage ?? ''));
    }
  }
}
