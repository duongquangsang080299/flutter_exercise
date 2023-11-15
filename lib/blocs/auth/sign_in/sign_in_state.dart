part of 'sign_in_bloc.dart';

class SignInState extends Equatable {
  final String email;
  final String password;
  final bool isButtonActive;
  final AuthStatus status;
  final bool showPassword;
  final bool isEmailValidatorVisible;

  const SignInState({
    required this.email,
    required this.password,
    required this.isButtonActive,
    required this.status,
    required this.showPassword,
    this.isEmailValidatorVisible = false,
  });

  SignInState copyWith({
    String? email,
    String? password,
    bool? isButtonActive,
    AuthStatus? status,
    bool? showPassword,
    bool? isEmailValidatorVisible,
    bool? isPasswordValidatorVisible,
  }) {
    return SignInState(
      email: email ?? this.email,
      password: password ?? this.password,
      isButtonActive: isButtonActive ?? this.isButtonActive,
      status: status ?? this.status,
      showPassword: showPassword ?? this.showPassword,
      isEmailValidatorVisible:
          isEmailValidatorVisible ?? this.isEmailValidatorVisible,
    );
  }

  @override
  List<Object?> get props =>
      [email, password, isButtonActive, status, showPassword];
}

class SignInInitial extends SignInState {
  const SignInInitial()
      : super(
            email: '',
            password: '',
            isButtonActive: false,
            showPassword: false,
            status: AuthStatus.initial);
}

class SignInLoading extends SignInState {
  const SignInLoading()
      : super(
            email: '',
            password: '',
            isButtonActive: false,
            showPassword: false,
            status: AuthStatus.inProgress);
}

class SignInSuccess extends SignInState {
  const SignInSuccess()
      : super(
            email: '',
            password: '',
            isButtonActive: true,
            showPassword: false,
            status: AuthStatus.success);
}

class SignInError extends SignInState {
  final String errorMessage;

  const SignInError({required this.errorMessage})
      : super(
            email: '',
            password: '',
            isButtonActive: false,
            showPassword: false,
            status: AuthStatus.failure);
}
