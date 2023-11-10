import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:soccer_club_app/data/repositories/auth_repo.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc({required this.repo}) : super(SignUpInitial()) {
    on<AuthSignUpEvent>((event, emit) async {
      try {
        await repo.signUp(email: event.email, password: event.password);
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setBool('isLoggedIn', true);
        emit(SignUpSucces());
      } catch (e) {
        emit(SignUpError());
      }
    });
  }
  final AuthRepo repo;
}
