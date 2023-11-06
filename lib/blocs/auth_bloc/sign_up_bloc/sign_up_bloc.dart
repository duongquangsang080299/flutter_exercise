import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soccer_club_app/data/repositories/sign_up_repo.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';

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
