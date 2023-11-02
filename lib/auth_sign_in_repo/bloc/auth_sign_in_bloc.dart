import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:soccer_club_app/auth_sign_in_repo/sign_in_repo.dart';

part 'auth_sign_in_event.dart';
part 'auth_sign_in_state.dart';

class AuthSignInBloc extends Bloc<AuthSignInEvent, AuthSignInState> {
  AuthSignInBloc({required this.repo}) : super(AuthSignInInitial()) {
    on<EnterSignInEvent>((event, emit) async {
      try {
        await repo.signIn(email: event.email, password: event.password);
        emit(AuthSignInSucces());
      } catch (e) {
        print(e);
        emit(AuthSignInError());
      }
    });
  }
  final SignInRepo repo;
}
