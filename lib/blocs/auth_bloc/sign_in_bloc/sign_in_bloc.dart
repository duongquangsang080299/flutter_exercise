import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soccer_club_app/data/repositories/sign_in_repo.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

class AuthSignInBloc extends Bloc<AuthSignInEvent, AuthSignInState> {
  AuthSignInBloc({required this.repo}) : super(AuthSignInInitial()) {
    on<EnterSignInEvent>((event, emit) async {
      try {
        emit(AuthSignInLoading());
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
