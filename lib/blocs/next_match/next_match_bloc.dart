import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'next_match_event.dart';
part 'next_match_state.dart';

class NextMatchBloc extends Bloc<NextMatchEvent, NextMatchState> {
  NextMatchBloc() : super(NextMatchInitial()) {
    on<NextMatchEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
