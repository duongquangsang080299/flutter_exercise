import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:soccer_club_app/data/repositories/auth_repo.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc({required this.repo}) : super(SignInInitial()) {
    on<AuthSignInEvent>((event, emit) async {
      try {
        emit(SignInLoading());
        await repo.signIn(email: event.email, password: event.password);
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setBool('isLoggedIn', true);
        emit(SignInSucces());
      } catch (e) {
        print(e);
        emit(SignInError());
      }
    });
  }
  final AuthRepo repo;
}
