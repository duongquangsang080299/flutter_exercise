import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:soccer_club_app/auth_sign_up_repo/sign_up_repo.dart';
part 'auth_sign_up_event.dart';
part 'auth_sign_up_state.dart';

class AuthSignUpBloc extends Bloc<AuthSignUpEvent, AuthSignUpState> {
  AuthSignUpBloc({required this.repo}) : super(AuthenticationInitial()) {
    on<SendDataEvent>((event, emit) async {
      try {
        await repo.signUp(email: event.email, password: event.password);
        emit(AuthenticationSucces());
      } catch (e) {
        emit(AuthenticationError());
      }
    });
  }
  final SignUpRepo repo;
}
