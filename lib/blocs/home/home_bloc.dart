import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:soccer_club_app/data/repositories/home_repo.dart';
import 'package:soccer_club_app/presentations/view_models/home/home_view_models.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository homeRepository;

  HomeBloc(this.homeRepository) : super(HomeInitialState()) {
    on<HomeLoadDataEvent>(_mapHomeLoadDataState);
    on<NewLoadDataEvent>(_mapNewsLoadDataState);
    on<MatchLoadDataEvent>(_mapMatchLoadDataState);
    on<TicketLoadDataEvent>(_mapTicketLoadDataState);
  }

  Future<void> _mapHomeLoadDataState(
      HomeLoadDataEvent event, Emitter<HomeState> emit) async {
    emit(HomeLoadingState());

    try {
      final homeViewModel = await homeRepository.fetchHomeData();
      emit(HomeLoadedState(homeViewModel));
    } catch (e) {
      emit(const HomeErrorState('Error loading home data'));
    }
  }

  Future<void> _mapNewsLoadDataState(
      NewLoadDataEvent event, Emitter<HomeState> emit) async {}

  Future<void> _mapMatchLoadDataState(
      MatchLoadDataEvent event, Emitter<HomeState> emit) async {}

  Future<void> _mapTicketLoadDataState(
      TicketLoadDataEvent event, Emitter<HomeState> emit) async {}
}
