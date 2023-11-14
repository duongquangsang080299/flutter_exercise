part of 'sign_in_bloc.dart';

class SignInState extends Equatable {
  final String email;
  final String password;
  final bool isButtonActive;
  final AuthStatus status;

  const SignInState({
    required this.email,
    required this.password,
    required this.isButtonActive,
    required this.status,
  });

  SignInState copyWith({
    String? email,
    String? password,
    bool? isButtonActive,
    AuthStatus? status,
  }) {
    return SignInState(
      email: email ?? this.email,
      password: password ?? this.password,
      isButtonActive: isButtonActive ?? this.isButtonActive,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [email, password, isButtonActive, status];
}

class SignInInitial extends SignInState {
  const SignInInitial()
      : super(
            email: '',
            password: '',
            isButtonActive: false,
            status: AuthStatus.initial);
}

class SignInLoading extends SignInState {
  const SignInLoading()
      : super(
            email: '',
            password: '',
            isButtonActive: false,
            status: AuthStatus.inProgress);
}

class SignInSuccess extends SignInState {
  const SignInSuccess()
      : super(
            email: '',
            password: '',
            isButtonActive: true,
            status: AuthStatus.success);
}

class SignInError extends SignInState {
  final String errorMessage;

  const SignInError({required this.errorMessage})
      : super(
            email: '',
            password: '',
            isButtonActive: false,
            status: AuthStatus.failure);
}
